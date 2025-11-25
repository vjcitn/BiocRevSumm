#' find branch name for an arbitrarily named submission to Bioconductor
#' @param user GitHub user name
#' @param repo GitHub repo
#' @param path folder within repo
#' @param branches character vector of candidates
#' @examples
#' find_existing_branch("vjcitn", "parody", "vignettes")
#' @export
find_existing_branch <- function(user, repo, path, branches = c("main", "master", "devel", "origin")) {
  for (branch in branches) {
    url <- sprintf("https://api.github.com/repos/%s/%s/contents/%s?ref=%s", user, repo, path, branch)
    res <- tryCatch({
      r <- httr::GET(url)
      if (httr::status_code(r) == 200) return(branch)
      else stop("Not found")
    }, error = function(e) NULL)
    if (!is.null(res)) return(res)
  }
  return(NA)  # None found
}

