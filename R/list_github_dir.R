#' use GitHub API to list files in a repo folder
#' @importFrom httr GET stop_for_status content
#' @importFrom jsonlite fromJSON
#' @note Thank you perplexity.ai.
#' @param user GitHub user name string
#' @param repo string naming repo of interest
#' @param path folder to query
#' @param branch string naming branch
#' @examples
#' list_github_dir("vjcitn", "parody", "vignettes")
#' @export
list_github_dir <- function(user, repo, path, branch = "main") {
   api_url <- sprintf(
     "https://api.github.com/repos/%s/%s/contents/%s?ref=%s",
     user, repo, path, branch
   )
   res <- GET(api_url)
   stop_for_status(res)
   info <- fromJSON(content(res, "text", encoding = "UTF-8"))
   return(info$name)
 }

