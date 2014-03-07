

#' Obtain a key with Google
#'
#' To login with Google, first visit  \href{https://accounts.google.com/b/0/IssuedAuthSubTokens?hide_authsub=1&hl=en}{Google security} and generate an app token. 
#' You can then save this in your \code{.rprofile} with
#' options("sheetsee" = "YOUR_AUTH_TOKEN")
#' In future sessions this will be automatically read in. You can also specify this inline
#' @param email Your gmail address
#' @param  key Your app specific password. See above for instructions to generate one.
#' @export
#' @import RGoogleDocs
#' @examples \dontrun{
#" # Remove the extra at sign before running the example below
#' ssee_auth('karthik.ram@@gmail.com')
#'}
ssee_auth <- function(email, key = getOption("sheetsee")) {
	assert_that(!is.null(key))
	token <- getGoogleAuth(email, key)
	con <- getGoogleDocsConnection(token)
	assign('con', con, envir = SheetSeeAuthCache)
	invisible(con)
}



#' @noRd
#' @keywords internal
ssee_get_auth <- function(){
  if(!exists("con", envir = SheetSeeAuthCache))
    tryCatch(ssee_auth(), error =  function(e) 
      stop("Requires authentication. 
      Are your credentials stored in options? 
      See ssee_auth function for details."))
  get("con", envir = SheetSeeAuthCache)
}
# con <- ssee_get_auth()
# docs <- getDocs(con)