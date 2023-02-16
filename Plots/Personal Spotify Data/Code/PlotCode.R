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
#PLAYBACK ACTIVITY PER WEEK AND HOUR
######################

streamingHours_plot <- streamingHours %>% ggplot(aes(x = date, y = hours)) + 
  geom_col(aes(fill = hours)) +
  scale_fill_gradient(low = "blue", high = "red") + 
  labs(x= "Date", y= "Hours of music playback") + 
  ggtitle("Music Listening Over Months", 
          "Playback activity per week- Bar Plots")

hoursArtist_Plot <- hoursArtist %>% 
  ggplot(aes(x = date, y = hours, group = artistName)) + 
  labs(x= "Date", y= "Hours of music playback") + 
  ggtitle("Music Listening Over Months", "Playback activity per week- Bar Plots- Line Plot") +
  geom_line()

######################
#MOST LISTENED ARTISTS (MORE THAN 3 HOURS)
######################

minutesMostListened_plot <- minutesMostListened %>%
  ggplot(aes(x = artistName, y = minutesListened)) + 
  geom_col(aes(fill = minutesListened)) +
  scale_fill_gradient(low = "blue", high = "red") + 
  labs(x= "Artist", y= "Minutes of music playback") + 
  ggtitle("Most Heard Artist", "> 3 hours listened to") +
  theme(axis.text.x = element_text(angle = 90))

######################
# PLAYBACK ACTIVITY BY DATE AND TIME OF DAY
######################

timeDay_plot <- timeDay %>% 
  ggplot(aes(x = hour, y = date, fill = minutesListened)) + 
  geom_tile() + 
  labs(x= "Time of the day", y= "Date") + 
  ggtitle("Activity by date and time of day") +
  scale_fill_gradient(low = "blue", high = "red")

######################
# PLAYBACK ACTIVITY BY TIME OF THE DAY
######################

hoursDay_plot <- hoursDay %>% 
  ggplot(aes(x = hour, y = minutesListened, group = date)) + 
  geom_col(fill = "violet") +
  labs(x= "Time of the day", y= "Minutes of music playback") + 
  ggtitle("Time of the Day v/s minutes of playback")

######################
# PLAYBACK ACTIVITY BY TIME OF THE DAY AND WEEKDAY
######################

hoursDay_heatmap <- hoursDay %>% 
  group_by(weekday, hour) %>% 
  summarize(minutes = sum(minutesListened)) %>% 
  ggplot(aes(x = hour, weekday, fill = minutes)) + 
  geom_tile() + 
  scale_fill_gradient(low = "blue", high = "red") +
  labs(x= "Time of the day", y= "Weekday") + 
  ggtitle("Day of the week v/s time of the day", 
          "Heat Map - Weekly activity from 0 to 24 hours")

######################
# PLAYBACK ACTIVITY BY TIME OF THE DAY AND WEEKDAY - LINE CHART
######################

weekDay_plot <- weekDay %>% 
  ggplot(aes(x = hour, y = minutes, color = weekday)) + 
  geom_line() +
  labs(x= "Time of the day", y= "Minutes of music playback") + 
  ggtitle("Day of the week v/s time of the day", 
          "Line chart - Weekly activity from 0 to 24 hours") 

######################
# PLAYBACK ACTIVITY BY DAY TYPE
######################

dayType_plot <- dayType %>%
  ggplot(aes(x = hour, y = minutes, color = day_type)) + 
  geom_line() +
  labs(x= "Time of the day", y= "Minutes of music playback") + 
  ggtitle("Time of the day v/s Minutes of music grouped by DayTypes", 
          "Weekday and weekend activity from 0 to 24 hours") 
