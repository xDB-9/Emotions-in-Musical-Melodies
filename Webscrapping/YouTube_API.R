library(tuber) # youtube API
library(magrittr) # Pipes %>%, %T>% and equals(), extract().
library(tidyverse) # all tidyverse packages
library(purrr) # package for iterating/extracting data
client_id <- "718879897178-jet4djnist1n2ekstpk4mhh13tpdf119.apps.googleusercontent.com"
client_secret <- "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"
# use the youtube oauth
yt_oauth(app_id = client_id,
         app_secret = client_secret,
         token = 'ya29.a0Aa4xrXOIGqOUdTeCV1nhHS_T0y0FwNud0NvXisrvIODDNb9wiYEY1u3_hBvizWjXrSeCpJtsnnX7Mz6rqgRcC2Wr4ShALANa_5SBSJlAi5MGwzqCpQdiBAp0Y7LbSM8rFhP3fwN1sNfUPFICJrYsiPCWaUnjaCgYKATASARISFQEjDvL95becaZGzuxhwcFOtkAQGLA0163')
Sciencephile_playlist_id <- stringr::str_split(
  string = "https://youtube.com/playlist?list=PLO9-8MGgWFMIdz-v2_bnSr2nHFTs_82iG", 
  pattern = "=", 
  n = 2,
  simplify = TRUE)[ , 2]
Sciencephile_playlist_id
SciencephileRaw <- tuber::get_playlist_items(filter = 
                                               c(playlist_id = "PLO9-8MGgWFMIdz-v2_bnSr2nHFTs_82iG"), 
                                             part = "contentDetails",
                                             # set this to the number of videos
                                             max_results = 14)
SciencephileRaw %>% dplyr::glimpse(78)
Sciencephile_ids <- base::as.vector(SciencephileRaw$contentDetails.videoId)
dplyr::glimpse(dave_chap_ids)
# Function to scrape stats for all vids
get_all_stats <- function(id) {
  tuber::get_stats(video_id = id)
} 
# Get stats and convert results to data frame 
SciencephileAllStatsRaw <- purrr::map_df(.x = Sciencephile_ids, 
                                         .f = get_all_stats)

SciencephileAllStatsRaw %>% dplyr::glimpse(78)

#############Idea Scrapped Later after Talking to Professor Dootika Vats
