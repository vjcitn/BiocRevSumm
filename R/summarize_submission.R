#library(httr2)
#library(jsonlite)
#library(base64enc)

get_repo_file <- function(owner, repo, path) {
  token  <- Sys.getenv("GITHUB_TOKEN", "")
  if (token == "") {
    stop("GITHUB_TOKEN environment variable is not set.")
  }

  url <- sprintf(
    "https://api.github.com/repos/%s/%s/contents/%s",
    owner, repo, path
  )

  resp <- request(url) |>
    req_headers(Authorization = paste("token", token)) |>
    req_perform()

  if (resp_status(resp) == 200) {
    data <- resp_body_json(resp, simplifyVector = FALSE)

    enc <- data$encoding %||% ""
    if (identical(enc, "base64")) {
      # content is a single string with newlines; remove them before decode
      raw_txt <- gsub("\\s+", "", data$content)
      return(rawToChar(base64decode(raw_txt)))
    } else if (!is.null(data$content)) {
      return(as.character(data$content))
    }
  }

  ""
}

#`%||%` <- function(x, y) if (is.null(x)) y else x

#' produce a list with repository metadata, README, and DESCRIPTION for
#' a given repository
#' @import httr2
#' @param owner organization
#' @param repo name of repository
#' @examples
#' if (nchar(Sys.getenv("GITHUB_TOKEN"))>0) {
#'   lk = get_repo_metadata("bioconductor", "AnVILVRS")
#' }
#' @export
get_repo_metadata <- function(owner, repo) {
  token  <- Sys.getenv("GITHUB_TOKEN", "")
  if (token == "") {
    stop("GITHUB_TOKEN environment variable is not set.")
  }

  repo_url <- sprintf("https://api.github.com/repos/%s/%s", owner, repo)

  repo_resp <- request(repo_url) |>
    req_headers(Authorization = paste("token", token)) |>
    req_perform()

  # raise_for_status equivalent
  if (resp_status(repo_resp) >= 400) {
    stop("HTTP error when fetching repo metadata: ",
         resp_status(repo_resp), " ", resp_status_desc(repo_resp))
  }

  repo_data <- resp_body_json(repo_resp, simplifyVector = FALSE)

  readme <- get_repo_file(owner, repo, "README.md")
  if (identical(readme, "")) {
    readme <- get_repo_file(owner, repo, "README")
  }
  description <- get_repo_file(owner, repo, "DESCRIPTION")

  list(
    repo_data   = repo_data,
    readme      = readme,
    description = description
  )
}

