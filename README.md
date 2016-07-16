# sheetseeR

This packages provides a quick and easy interface to [`Sheetsee js`](http://jlord.github.io/sheetsee.js/), _a client-side library for connecting Google Spreadsheets to a website and visualizing the information in tables, maps and charts_. The goal is provide a super-easy interface to uploading data into Google docs (or downloading and updating existing datasets) and generating a sheetsee js page with maps, a data browser, or interactive figures.

Package is in alpha and not ready to install.


__Installation__

```coffee
devtools::install_github("ropensci/sheetseeR")
```

__Keys__

* First go to `google.com/security/`, sign in
* Go to app specific passwords
* Create a new one (name doesn't matter)
* Then return to your `.rprofile` and add:  

```coffee
options("sheetsee" = "YOUR_KEY")
```
Then you'll be good to go with:

```coffee
library(sheetseeR)
ssee_auth("karthik.ram@gmail.com")
# In the future you can also just set up your email in your profile
```

---

[![](http://ropensci.org/public_images/github_footer.png)](http://ropensci.org)
