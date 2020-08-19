#' @param key your API key
#' @examples
#' set_bb_key("XXXX-XX-XX")
set_bb_key <- function(key) {
  Sys.setenv(BLACKBOARD_API_KEY = key)
}


#' @param domain BlackBoard domain
#' @examples
#' set_bb_domain("https://mybb.gvsu.edu")
set_bb_domain <- function(domain) {
  Sys.setenv(BLACKBOARD_DOMAIN = domain)
}


#' @param key your API key
#' @examples
#' set_bb_key("XXXX-XX-XX")
gvsu_login <- function(key) {
  set_bb_key(key)
  set_bb_domain("https://mybb.gvsu.edu")
}


get_bb_key <- function() {
  key <- Sys.getenv("BLACKBOARD_API_KEY")
  if (identical(key, "")) {
    stop("Please set env var BLACKBOARD_API_KEY to your access key.",
         call. = FALSE)
  }
  key
}

get_bb_url <- function() {
  domain <- Sys.getenv("BLACKBOARD_DOMAIN")
  if (identical(domain, "")) {
    stop("Please set env var BLACKBOARD_DOMAIN to your domain url.",
         call. = FALSE)
  }
  url <- paste0(domain, "/api/v1/")
  url
}
