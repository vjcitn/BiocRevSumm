
#' given a github repo and token, enumerate all open issues
#' @import curl
#' @import jsonlite
#' @import stringr
#' @param owner organization name
#' @param repo repo name
#' @param token token such as GitHub PAT
#' @param state "open" by default, could be "all" but might hit rate limit
#' @examples
#' if (nchar(tok <- Sys.getenv("GITHUB_TOKEN"))>0) {
#'  alli = get_repo_issues("bioconductor", "Contributions", tok)
#'  str(alli[[1]])
#' }
#' @export
get_repo_issues <- function(owner, repo, token, state = "open") {
  url <- sprintf(
    "https://api.github.com/repos/%s/%s/issues?state=%s",
    owner, repo, state
  )

  h <- new_handle()
  handle_setheaders(
    h,
    "Authorization" = paste("Bearer", token),
    "Accept" = "application/vnd.github+json",
    "X-GitHub-Api-Version" = "2022-11-28"
  )

  res <- curl_fetch_memory(url, handle = h)  # status, headers, content [web:2][web:4]
  if (res$status_code >= 400) {
    stop("HTTP error: ", res$status_code, "\n", rawToChar(res$content))
  }

  fromJSON(rawToChar(res$content), simplifyVector = FALSE)
}

#alli = get_repo_issues("bioconductor", "Contributions", Sys.getenv("GITHUB_TOKEN"))


`%||%` <- function(x, y) if (is.null(x)) y else x

extract_repo_url <- function(issue_body) {
  body_chr <- as.character(issue_body %||% "")
  m <- str_match(body_chr, "(https?://github\\.com/[^[:space:]]+)")
  if (is.null(m)) return(NA_character_)
  m[1, 2]
}

#' given an issue stream, find the first URL mentioned
#' @param issues a list of issues retrieved with `get_repo_issues`
#' @export
get_issue_repo_urls <- function(issues) {
  data.frame(
    number = vapply(issues, `[[`, numeric(1), "number"),
    title  = vapply(issues, `[[`, character(1), "title"),
    repo_url = vapply(
      issues,
      function(x) extract_repo_url(x$body),
      character(1)
    ),
    stringsAsFactors = FALSE
  )
}

