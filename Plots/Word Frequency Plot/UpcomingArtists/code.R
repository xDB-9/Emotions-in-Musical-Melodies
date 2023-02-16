#############
#Loading the necessary libraries
library(dplyr)
library(tidyverse)
library(graphics)

#############
#Barplot Histogram showing the top 40 words being used the most in each category 
#The plots are created in after putting the data in descending order

#Acousticness

lyrics_acousticness_upcoming0.01_frequency <- lyrics_acousticness_upcoming0.01_frequency[order(-lyrics_acousticness_upcoming0.01_frequency$Freq),]
barplot(lyrics_acousticness_upcoming0.01_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_acousticness_upcoming0.01_frequency[1:40,]$tolower.lyrics_acousticness_upcoming0.01.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

lyrics_acousticness_upcoming0.75_frequency <- lyrics_acousticness_upcoming0.75_frequency[order(-lyrics_acousticness_upcoming0.75_frequency$Freq),]
barplot(lyrics_acousticness_upcoming0.75_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_acousticness_upcoming0.75_frequency[1:40,]$tolower.lyrics_acousticness_upcoming0.75.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

#Danceability

lyrics_danceability_upcoming0.3_frequency <- lyrics_danceability_upcoming0.3_frequency[order(-lyrics_danceability_upcoming0.3_frequency$Freq),]
barplot(lyrics_danceability_upcoming0.3_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_danceability_upcoming0.3_frequency[1:40,]$tolower.lyrics_danceability_upcoming0.3.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


lyrics_danceability_upcoming0.8_frequency <- lyrics_danceability_upcoming0.8_frequency[order(-lyrics_danceability_upcoming0.8_frequency$Freq),]
barplot(lyrics_danceability_upcoming0.8_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_danceability_upcoming0.8_frequency[1:40,]$tolower.lyrics_danceability_upcoming0.8.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

#Duration

lyrics_duration_upcoming400000_frequency <- lyrics_duration_upcoming400000_frequency[order(-lyrics_duration_upcoming400000_frequency$Freq),]
barplot(lyrics_duration_upcoming400000_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_duration_upcoming400000_frequency[1:40,]$tolower.lyrics_duration_upcoming400000.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


#Energy

lyrics_energy_upcoming0.2_frequency <- lyrics_energy_upcoming0.2_frequency[order(-lyrics_energy_upcoming0.2_frequency$Freq),]
barplot(lyrics_energy_upcoming0.2_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_energy_upcoming0.2_frequency[1:40,]$tolower.lyrics_energy_upcoming0.2.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

lyrics_energy_upcoming0.85_frequency <- lyrics_energy_upcoming0.85_frequency[order(-lyrics_energy_upcoming0.85_frequency$Freq),]
barplot(lyrics_energy_upcoming0.85_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_energy_upcoming0.85_frequency[1:40,]$tolower.lyrics_energy_upcoming0.85.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


#Explicitness

lyrics_explicit_upcomingTRUE_frequency <- lyrics_explicit_upcomingTRUE_frequency[order(-lyrics_explicit_upcomingTRUE_frequency$Freq),]
barplot(lyrics_explicit_upcomingTRUE_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_explicit_upcomingTRUE_frequency[1:40,]$tolower.lyrics_explicit_upcomingTRUE.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

#Liveness

lyrics_liveness_upcoming0.05_frequency <- lyrics_liveness_upcoming0.05_frequency[order(-lyrics_liveness_upcoming0.05_frequency$Freq),]
barplot(lyrics_liveness_upcoming0.05_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_liveness_upcoming0.05_frequency[1:40,]$tolower.lyrics_liveness_upcoming0.05.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")



lyrics_liveness_upcoming0.75_frequency <- lyrics_liveness_upcoming0.75_frequency[order(-lyrics_liveness_upcoming0.75_frequency$Freq),]
barplot(lyrics_liveness_upcoming0.75_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_liveness_upcoming0.75_frequency[1:40,]$tolower.lyrics_liveness_upcoming0.75.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


#Loudness


lyrics_loudness_upcoming_20_frequency <- lyrics_loudness_upcoming_20_frequency[order(-lyrics_loudness_upcoming_20_frequency$Freq),]
barplot(lyrics_loudness_upcoming_20_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_loudness_upcoming_20_frequency[1:40,]$tolower.lyrics_loudness_upcoming_20.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


#Speechiness

lyrics_speechiness_upcoming0.03_frequency <- lyrics_speechiness_upcoming0.03_frequency[order(-lyrics_speechiness_upcoming0.03_frequency$Freq),]
barplot(lyrics_speechiness_upcoming0.03_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_speechiness_upcoming0.03_frequency[1:40,]$tolower.lyrics_speechiness_upcoming0.03.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


lyrics_speechiness_upcoming0.7_frequency <- lyrics_speechiness_upcoming0.7_frequency[order(-lyrics_speechiness_upcoming0.7_frequency$Freq),]
barplot(lyrics_speechiness_upcoming0.7_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_speechiness_upcoming0.7_frequency[1:40,]$tolower.lyrics_speechiness_upcoming0.7.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


#Tempo


lyrics_tempo_upcoming185_frequency <- lyrics_tempo_upcoming185_frequency[order(-lyrics_tempo_upcoming185_frequency$Freq),]
barplot(lyrics_tempo_upcoming185_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_tempo_upcoming185_frequency[1:40,]$tolower.lyrics_tempo_upcoming185.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


#Valence


lyrics_valence_upcoming0.1_frequency <- lyrics_valence_upcoming0.1_frequency[order(-lyrics_valence_upcoming0.1_frequency$Freq),]
barplot(lyrics_valence_upcoming0.1_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_valence_upcoming0.1_frequency[1:40,]$tolower.lyrics_valence_upcoming0.1.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


lyrics_valence_upcoming0.85_frequency <- lyrics_valence_upcoming0.85_frequency[order(-lyrics_valence_upcoming0.85_frequency$Freq),]
barplot(lyrics_valence_upcoming0.85_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_valence_upcoming0.85_frequency[1:40,]$tolower.lyrics_valence_upcoming0.85.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
