<div id="main" class="col-md-9" role="main">

# BiocRevSumm: LLM-based summaries for Bioconductor package submissions

<div class="section level2">

## Introduction

This package surveys issues in the Bioconductor contributions
repositories with the aim of producing a structured summary of package
objectives and capabilities.

</div>

<div class="section level2">

## Enumerating packages in review

<div id="cb1" class="sourceCode">

``` r
library(BiocRevSumm)
stopifnot(nchar(Sys.getenv("GITHUB_TOKEN"))>0)
iss = get_repo_issues("bioconductor", "contributions", Sys.getenv("GITHUB_TOKEN"))
urls = get_issue_repo_urls(iss)
head(urls)
```

</div>

    ##   number                              title
    ## 1   4047                           EMTscore
    ## 2   4041 RFGeneRank: New Package Submission
    ## 3   4039                          panoramic
    ## 4   4038                            DenoIST
    ## 5   4036                        PostChicago
    ## 6   4033                               fraq
    ##                                           repo_url
    ## 1                https://github.com/wenmm/EMTscore
    ## 2 https://github.com/Abdulaziz-Albeshri/RFGeneRank
    ## 3       https://github.com/plevritis-lab/panoramic
    ## 4              https://github.com/aaronkwc/DenoIST
    ## 5   https://github.com/FeldmannLabDKFZ/PostChicago
    ## 6                 https://github.com/traversc/fraq

</div>

<div class="section level2">

## Finding the vignettes for high-resolution categorization

<div id="cb3" class="sourceCode">

``` r
u1 = urls$repo_url[1]
lk1 = strsplit(u1, "\\/")[[1]]
ghuser = lk1[4]
ghrepo = lk1[5]
lkvigs = list_github_dir(user = ghuser, repo = ghrepo, path="vignettes") 
vigs = grep("Rmd", lkvigs, value=TRUE)
# arbitrarily choose first
build_vignette_path = function(ghuser, ghrepo, branch, vname) {
  sprintf(
    "https://raw.githubusercontent.com/%s/%s/refs/heads/%s/vignettes/%s",
     ghuser, ghrepo, branch, vname
     )
   }
url = build_vignette_path(ghuser, ghrepo, branch="main", vname=vigs[1])
url
```

</div>

    ## [1] "https://raw.githubusercontent.com/wenmm/EMTscore/refs/heads/main/vignettes/EMTscore.Rmd"

</div>

<div class="section level2">

## Summarize a selected vignette

<div id="cb5" class="sourceCode">

``` r
ans = vig2data(url)
writeLines(strwrap(ans$focused, 75))
```

</div>

The article “EMTscore Analysis and Plots” details the utilization of
various computational methods within the R package “EMTscore” to assess
epithelial-mesenchymal transition (EMT) at the genetic level. EMT is
characterized by the transformation of epithelial cells into mesenchymal
cells, a process pivotal in cancer metastasis and tissue regeneration.
By computing and visualizing EMT scores, researchers can better
understand this biological transition both in bulk RNA-sequencing and
single-cell RNA-sequencing data. The article explains key aspects such
as:

1.  **Objective of EMTscore:** The package allows for the computation of
    scores for epithelial (E) and mesenchymal (M) gene sets as well as
    the option for user-defined gene sets. It provides multiple
    algorithms for score calculation, including nonnegative PCA (nnPCA),
    AUCell, ssGSEA, JASMINE, and SCSE.

2.  **Analytical Techniques:** By leveraging nnPCA, the article
    demonstrates how multiple mesenchymal phenotype scores can be
    identified and correlated with EMT scores and other gene sets.
    Additional functionalities include: - Loading and annotating
    cell/sample data. - Utilizing existing datasets and gene signatures,
    such as the Panchy\_et\_al signatures. - Computing gene set scores
    using bulk RNA-seq example walk-throughs.

3.  **Visualizations and Plot Construction:** - Plotting E-M score
    correlations to observe phenotypic variations across cells. -
    Dimension-specific scatter plots for mesenchymal (M) scores,
    highlighting potential gene divergence or cellular heterogeneity. -
    Creation of combined plots for comprehensive visualization of
    between-score relationships. - Analysis of score distributions
    across cell types using histograms. - Heatmaps of gene expression
    data.

4.  **Single-Cell RNA-seq Analysis:** The package extends functionality
    to single-cell data, indicating steps for importing, EMT scoring,
    and plotting dynamic gene expression changes along pseudotime.
    Gaussian Mixture Models (GMM) can be used for clustering EMT states
    and correlating these states with biological processes.

5.  **Pathway and Process Integration:** In assessing pathways
    associated with EMT, the article illustrates how pathway activity
    scores can be calculated and correlated with EMT scores to identify
    significant biological pathways. - The significant positive and
    negative correlations among pathways are visualized using bar
    charts.

6.  **Additional Biological Scores:** Calculation of stemness and
    senescence scores provide insights into cellular states like
    pluripotency or aging. The article explores relationships between
    these scores with EMT scores in single-cell data.

Overall, the article offers a systematic guide for researchers seeking
to quantify and visualize EMT processes at the genomic level, with the
flexibility to incorporate custom datasets and gene sets within their
EMTscore analyses.

</div>

<div class="section level2">

## Collect summaries, and categorize them

<div class="section level3">

### Get paths to vignette

The first vignette found in the listing of vignettes folder with Rmd or
Rnw suffix will be selected.

<div id="cb6" class="sourceCode">

``` r
rs = urls$repo_url
issusers = sapply(strsplit(rs, "\\/"), "[", 4)
issrepos = sapply(strsplit(rs, "\\/"), "[", 5)
nrep = length(issusers)

vpaths = sapply(head(seq_len(nrep)), function(i) {
   br = find_existing_branch(issusers[i], issrepos[i], path="vignettes", branches = c("main", "master", "devel",
     "origin"))
   if (is.na(br)) return(NA)
   Sys.sleep(5)  # watch out for rate limit
   vd = try(list_github_dir(user = issusers[i], repo = issrepos[i], branch=br, path="vignettes"), silent=FALSE)
   if (inherits(vd, "try-error")) return(NA)
   vn = grep("Rmd|Rnw", vd, value=TRUE)[1]
   build_vignette_path(issusers[i], issrepos[i], branch=br, vname=vn)
   })
head(vpaths)
```

</div>

    ## [1] "https://raw.githubusercontent.com/wenmm/EMTscore/refs/heads/main/vignettes/EMTscore.Rmd"                       
    ## [2] "https://raw.githubusercontent.com/Abdulaziz-Albeshri/RFGeneRank/refs/heads/main/vignettes/RFGeneRank-intro.Rmd"
    ## [3] "https://raw.githubusercontent.com/plevritis-lab/panoramic/refs/heads/main/vignettes/tutorial.Rmd"              
    ## [4] "https://raw.githubusercontent.com/aaronkwc/DenoIST/refs/heads/master/vignettes/denoist_spe.Rmd"                
    ## [5] "https://raw.githubusercontent.com/FeldmannLabDKFZ/PostChicago/refs/heads/main/vignettes/PostChicago.Rmd"       
    ## [6] "https://raw.githubusercontent.com/traversc/fraq/refs/heads/main/vignettes/fraq_getting_started.Rmd"

</div>

<div class="section level3">

### Use vig2data to summarize vignette (and thus package)

<div id="cb8" class="sourceCode">

``` r
z1 = vig2data(vpaths[6])
z1$focused
```

</div>

</div>

</div>

<div class="section level2">

## Code that produced summaries for packages in review on 22 Nov 2025

<div id="cb9" class="sourceCode">

``` r
library(BiocRevSumm) 
data("viglist_23_nov_2025", package="BiocRevSumm")
url2heading = function(x) {
 stopifnot(length(x)==1)
 z = strsplit(x, "\\/")[[1]]
 sprintf('\n\n## Package %s from repo %s ([repo link](https://github.com/%s/%s))\n\n', z[5], z[4], z[4], z[5])
 }
for (i in seq_len(length(viglist_23_nov_2025))) {
 curvig = viglist_23_nov_2025[[i]]
 cat(url2heading(curvig), "\n")
 Sys.sleep(15)
 ans = vig2data( curvig )
 z = strsplit(curvig, "\\/")[[1]]
 fn = sprintf("%s_%s.rds", z[4], z[5])
 saveRDS(ans, file=fn)
 foc = ans$focused
 cat(foc)
}
```

</div>

</div>

</div>
