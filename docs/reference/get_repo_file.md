<div id="main" class="col-md-9" role="main">

# summarize the repo underlying a submission issue

<div class="ref-description section level2">

summarize the repo underlying a submission issue

</div>

<div class="section level2">

## Usage

<div class="sourceCode">

``` r
get_repo_file(owner, repo, path)
```

</div>

</div>

<div class="section level2">

## Arguments

-   url:

    character(1) with correct https URL for contribution repo

</div>

<div class="section level2">

## Value

A list with components \`summary\` (text string with summary, and
\`url\` (the repo URL string. See inst/python/summ1.py for hardcoded
openai parameters

</div>

<div class="section level2">

## Note

At present we have hardcoded the LLM to use as gpt-4. At most 2000 words
from DESCRIPTION and at most 4000 words from README are provided for a
brief prompt asking for technical summary.

The python code was written by instructing perplexity.ai on Nov 18 2025.

</div>

<div class="section level2">

## Examples

<div class="sourceCode">

``` r
t1 = summarize_submission("https://github.com/bioconductor/AnVILVRS")
#> Error in summarize_submission("https://github.com/bioconductor/AnVILVRS"): could not find function "summarize_submission"
cat(strwrap(t1, 75), sep="\n")
#> Error: object 't1' not found
```

</div>

</div>

</div>
