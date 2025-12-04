<div id="main" class="col-md-9" role="main">

# find branch name for an arbitrarily named submission to Bioconductor

<div class="ref-description section level2">

find branch name for an arbitrarily named submission to Bioconductor

</div>

<div class="section level2">

## Usage

<div class="sourceCode">

``` r
find_existing_branch(
  user,
  repo,
  path,
  branches = c("main", "master", "devel", "origin")
)
```

</div>

</div>

<div class="section level2">

## Arguments

-   user:

    GitHub user name

-   repo:

    GitHub repo

-   path:

    folder within repo

-   branches:

    character vector of candidates

</div>

<div class="section level2">

## Examples

<div class="sourceCode">

``` r
find_existing_branch("vjcitn", "parody", "vignettes")
#> [1] "main"
```

</div>

</div>

</div>
