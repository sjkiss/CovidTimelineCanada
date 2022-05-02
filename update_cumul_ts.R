# Update raw_data/cumul_ts #
# Author: Jean-Paul R. Soucy #

# Note: This script assumes the working directory is set to the root directory of the project.
# This is most easily achieved by using the provided CovidTimelineCanada.Rproj in RStudio.

# Authentication: You must authenticate your Google account before running the rest of the script.
# You may be asked to give "Tidyverse API Packages" read/write access to your Google account.

# authenticate with Google account (skip if already authenticated)
if (!googlesheets4::gs4_has_token()) {
  if (file.exists("/secrets.json")) {
    # use service account key to authenticate non-interactively, if it exists
    googlesheets4::gs4_auth(path = "/secrets.json")
  } else {
    # otherwise, prompt for authentication
    googlesheets4::gs4_auth()
  }
}
