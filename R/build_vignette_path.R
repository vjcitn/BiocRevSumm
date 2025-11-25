#' create raw user content path for a vignette
#' @param ghuser user name
#' @param ghrepo repo name
#' @param branch branch name
#' @param vname vignette name
#' @export
build_vignette_path = function(ghuser, ghrepo, branch, vname) {
  sprintf(
    "https://raw.githubusercontent.com/%s/%s/refs/heads/%s/vignettes/%s",
     ghuser, ghrepo, branch, vname
     )
   }

