######################
#Loading Necessary Libraries
######################

library(jsonlite)
library(lubridate)
library(gghighlight)
library(spotifyr)
library(tidyverse)
library(knitr)
library(ggplot2)
library(plotly)

######################
#READING JSON Data HISTORY
######################

streamHistory <- fromJSON("StreamingHistory0.json", flatten = TRUE)
searchQueries <- fromJSON("SearchQueries.json", flatten = TRUE)
Playlist <- fromJSON("Playlist1.json", flatten = TRUE)
Inferences <- fromJSON("Inferences.json", flatten = TRUE)
Identifiers <- fromJSON("Identifiers.json", flatten = TRUE)
Follow <- fromJSON("Follow.json", flatten = TRUE)
userData <- fromJSON("Userdata.json", flatten = TRUE)

######################
#ADDING DATE AND TIMING
#######################ADDING DATE AND TIMING
######################

mySpotify <- streamHistory %>% 
  as_tibble() %>% 
  mutate_at("endTime", ymd_hm) %>% 
  mutate(endTime = endTime - hours(6)) %>% 
  mutate(date = floor_date(endTime, "day") %>% as_date, seconds = msPlayed / 1000, minutes = seconds / 60)

######################
#PLAYBACK ACTIVITY PER WEEK AND HOUR
######################

streamingHours <- mySpotify %>% 
  filter(date >= "2020-01-01") %>% 
  group_by(date) %>% 
  group_by(date = floor_date(date, "week")) %>%
  summarize(hours = sum(minutes) / 60) %>% 
  arrange(date)

######################
#PLAYBACK ACTIVITY PER SPECIFIC ARTIST
######################
hoursArtist <- mySpotify %>% 
  group_by(artistName, date = floor_date(date, "month")) %>% 
  summarize(hours = sum(minutes) / 60) 

######################
#MOST LISTENED ARTISTS (MORE THAN 3 HOURS)
######################

minutesMostListened <- mySpotify %>% 
  filter(date >= "2020-01-01") %>% 
  group_by(artistName) %>% 
  summarize(minutesListened = sum(minutes)) %>% 
  filter(minutesListened >= 180)

######################
# PLAYBACK ACTIVITY BY DATE AND TIME OF DAY
######################

timeDay <- mySpotify %>% 
  filter(date >= "2020-01-01") %>% 
  group_by(date, hour = hour(endTime)) %>% 
  summarize(minutesListened = sum(minutes))

######################
# PLAYBACK ACTIVITY BY TIME OF THE DAY
######################

hoursDay <- mySpotify %>% 
  filter(date >= "2019-01-01") %>% 
  group_by(date, hour = hour(endTime), weekday = wday(date, label = TRUE))%>% 
  summarize(minutesListened = sum(minutes))

######################
# PLAYBACK ACTIVITY BY TIME OF THE DAY AND WEEKDAY - LINE CHART
######################

weekDay <- hoursDay %>% 
  group_by(weekday, hour) %>% 
  summarize(minutes = sum(minutesListened))

######################
# PLAYBACK ACTIVITY BY DAY TYPE
######################

dayType <- hoursDay %>% 
  mutate(day_type = if_else(weekday %in% c("Sat", "Sun"), "weekend", "weekday")) %>% 
  group_by(day_type, hour) %>% 
  summarize(minutes = sum(minutesListened))
