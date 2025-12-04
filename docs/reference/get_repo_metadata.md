<div id="main" class="col-md-9" role="main">

# produce a list with repository metadata, README, and DESCRIPTION for a given repository

<div class="ref-description section level2">

produce a list with repository metadata, README, and DESCRIPTION for a
given repository

</div>

<div class="section level2">

## Usage

<div class="sourceCode">

``` r
get_repo_metadata(owner, repo)
```

</div>

</div>

<div class="section level2">

## Arguments

-   owner:

    organization

-   repo:

    name of repository

</div>

<div class="section level2">

## Examples

<div class="sourceCode">

``` r
if (nchar(Sys.getenv("GITHUB_TOKEN"))>0) {
  lk = get_repo_metadata("bioconductor", "AnVILVRS")
}
#> Error in base64decode(raw_txt): could not find function "base64decode"
```

</div>

</div>

</div>
