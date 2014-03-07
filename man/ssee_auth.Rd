\name{ssee_auth}
\alias{ssee_auth}
\title{Obtain a key with Google}
\usage{
ssee_auth(email, key = getOption("sheetsee"))
}
\arguments{
  \item{email}{Your gmail address}

  \item{key}{Your app specific password. See above for
  instructions to generate one.}
}
\description{
To login with Google, first visit
\href{https://accounts.google.com/b/0/IssuedAuthSubTokens?hide_authsub=1&hl=en}{Google
security} and generate an app token. You can then save this
in your \code{.rprofile} with options("sheetsee" =
"YOUR_AUTH_TOKEN") In future sessions this will be
automatically read in. You can also specify this inline
}
\examples{
\dontrun{
ssee_auth('karthik.ram@gmail.com')
}
}

