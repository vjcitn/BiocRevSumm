<div id="main" class="col-md-9" role="main">

# use GitHub API to list files in a repo folder

<div class="ref-description section level2">

use GitHub API to list files in a repo folder

</div>

<div class="section level2">

## Usage

<div class="sourceCode">

``` r
list_github_dir(user, repo, path, branch = "main")
```

</div>

</div>

<div class="section level2">

## Arguments

-   user:

    GitHub user name string

-   repo:

    string naming repo of interest

-   path:

    folder to query

-   branch:

    string naming branch

</div>

<div class="section level2">

## Note

Thank you perplexity.ai.

</div>

<div class="section level2">

## Examples

<div class="sourceCode">

``` r
list_github_dir("vjcitn", "parody", "vignettes")
#> [1] "parody.Rmd"
```

</div>

</div>

</div>
