#' URLs for vignettes of packages in review 22 Nov 2025
#' @docType data
#' @format character vector
#' @examples
#' data("viglist_23_nov_2025", package="BiocRevSumm")
#' head(viglist_23_nov_2025)
"viglist_23_nov_2025"

#' a list of 68 repository descriptions for packages in review in Nov 2025
#' @docType data
#' @note Each element has components `summary` and `URL` for a repository.
#' @note The summaries were produced by `summarize_submission` and
#' are based on analysis of DESCRIPTION and README.  This is an early
#' approach and `vig2data` might be preferred.  Or the two procedures
#' could be combines.
#' @examples
#' data("desc", package="BiocRevSumm")
#' desc[[1]]
"desc"
