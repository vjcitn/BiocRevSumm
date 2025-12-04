<div id="main" class="col-md-9" role="main">

# given a github repo and token, enumerate all open issues

<div class="ref-description section level2">

given a github repo and token, enumerate all open issues

</div>

<div class="section level2">

## Usage

<div class="sourceCode">

``` r
get_repo_issues(owner, repo, token, state = "open")
```

</div>

</div>

<div class="section level2">

## Arguments

-   owner:

    organization name

-   repo:

    repo name

-   token:

    token such as GitHub PAT

-   state:

    "open" by default, could be "all" but might hit rate limit

</div>

<div class="section level2">

## Examples

<div class="sourceCode">

``` r
if (nchar(tok <- Sys.getenv("GITHUB_TOKEN"))>0) {
 alli = get_repo_issues("bioconductor", "Contributions", tok)
 str(alli[[1]])
}
#> List of 32
#>  $ url                       : chr "https://api.github.com/repos/Bioconductor/Contributions/issues/4047"
#>  $ repository_url            : chr "https://api.github.com/repos/Bioconductor/Contributions"
#>  $ labels_url                : chr "https://api.github.com/repos/Bioconductor/Contributions/issues/4047/labels{/name}"
#>  $ comments_url              : chr "https://api.github.com/repos/Bioconductor/Contributions/issues/4047/comments"
#>  $ events_url                : chr "https://api.github.com/repos/Bioconductor/Contributions/issues/4047/events"
#>  $ html_url                  : chr "https://github.com/Bioconductor/Contributions/issues/4047"
#>  $ id                        : num 3.69e+09
#>  $ node_id                   : chr "I_kwDOAyn0c87cEfEz"
#>  $ number                    : int 4047
#>  $ title                     : chr "EMTscore"
#>  $ user                      :List of 19
#>   ..$ login              : chr "wenmm"
#>   ..$ id                 : int 31941752
#>   ..$ node_id            : chr "MDQ6VXNlcjMxOTQxNzUy"
#>   ..$ avatar_url         : chr "https://avatars.githubusercontent.com/u/31941752?v=4"
#>   ..$ gravatar_id        : chr ""
#>   ..$ url                : chr "https://api.github.com/users/wenmm"
#>   ..$ html_url           : chr "https://github.com/wenmm"
#>   ..$ followers_url      : chr "https://api.github.com/users/wenmm/followers"
#>   ..$ following_url      : chr "https://api.github.com/users/wenmm/following{/other_user}"
#>   ..$ gists_url          : chr "https://api.github.com/users/wenmm/gists{/gist_id}"
#>   ..$ starred_url        : chr "https://api.github.com/users/wenmm/starred{/owner}{/repo}"
#>   ..$ subscriptions_url  : chr "https://api.github.com/users/wenmm/subscriptions"
#>   ..$ organizations_url  : chr "https://api.github.com/users/wenmm/orgs"
#>   ..$ repos_url          : chr "https://api.github.com/users/wenmm/repos"
#>   ..$ events_url         : chr "https://api.github.com/users/wenmm/events{/privacy}"
#>   ..$ received_events_url: chr "https://api.github.com/users/wenmm/received_events"
#>   ..$ type               : chr "User"
#>   ..$ user_view_type     : chr "public"
#>   ..$ site_admin         : logi FALSE
#>  $ labels                    :List of 1
#>   ..$ :List of 7
#>   .. ..$ id         : num 2.18e+09
#>   .. ..$ node_id    : chr "MDU6TGFiZWwyMTc4OTcxMDg0"
#>   .. ..$ url        : chr "https://api.github.com/repos/Bioconductor/Contributions/labels/1.%20awaiting%20moderation"
#>   .. ..$ name       : chr "1. awaiting moderation"
#>   .. ..$ color      : chr "1881c2"
#>   .. ..$ default    : logi FALSE
#>   .. ..$ description: chr "submitted and waiting clearance to access resources"
#>  $ state                     : chr "open"
#>  $ locked                    : logi FALSE
#>  $ assignee                  : NULL
#>  $ assignees                 : list()
#>  $ milestone                 : NULL
#>  $ comments                  : int 1
#>  $ created_at                : chr "2025-12-03T22:37:47Z"
#>  $ updated_at                : chr "2025-12-03T22:39:58Z"
#>  $ closed_at                 : NULL
#>  $ author_association        : chr "NONE"
#>  $ type                      : NULL
#>  $ active_lock_reason        : NULL
#>  $ sub_issues_summary        :List of 3
#>   ..$ total            : int 0
#>   ..$ completed        : int 0
#>   ..$ percent_completed: int 0
#>  $ issue_dependencies_summary:List of 4
#>   ..$ blocked_by      : int 0
#>   ..$ total_blocked_by: int 0
#>   ..$ blocking        : int 0
#>   ..$ total_blocking  : int 0
#>  $ body                      : chr "Update the following URL to point to the GitHub repository of\nthe package you wish to submit to _Bioconductor_"| __truncated__
#>  $ closed_by                 : NULL
#>  $ reactions                 :List of 10
#>   ..$ url        : chr "https://api.github.com/repos/Bioconductor/Contributions/issues/4047/reactions"
#>   ..$ total_count: int 0
#>   ..$ +1         : int 0
#>   ..$ -1         : int 0
#>   ..$ laugh      : int 0
#>   ..$ hooray     : int 0
#>   ..$ confused   : int 0
#>   ..$ heart      : int 0
#>   ..$ rocket     : int 0
#>   ..$ eyes       : int 0
#>  $ timeline_url              : chr "https://api.github.com/repos/Bioconductor/Contributions/issues/4047/timeline"
#>  $ performed_via_github_app  : NULL
#>  $ state_reason              : NULL
```

</div>

</div>

</div>
