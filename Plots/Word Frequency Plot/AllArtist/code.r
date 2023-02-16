#############
#Loading the necessary libraries
library(dplyr)
library(tidyverse)
library(graphics)

#############
#Barplot Histogram showing the top 40 words being used the most in each category 
#The plots are created in after putting the data in descending order

#Acousticness

lyrics_acousticness0.01_frequency <- lyrics_acousticness0.01_frequency[order(-lyrics_acousticness0.01_frequency$Freq),]
barplot(lyrics_acousticness0.01_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_acousticness0.01_frequency[1:40,]$tolower.lyrics_acousticness0.01.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        

lyrics_acousticness0.995_frequency <- lyrics_acousticness0.995_frequency[order(-lyrics_acousticness0.995_frequency$Freq),]
barplot(lyrics_acousticness0.995_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_acousticness0.995_frequency[1:40,]$tolower.lyrics_acousticness0.995.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        
        
#Danceability

lyrics_danceability0.01_frequency <- lyrics_danceability0.01_frequency[order(-lyrics_danceability0.01_frequency$Freq),]
barplot(lyrics_danceability0.01_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_danceability0.01_frequency[1:40,]$tolower.lyrics_danceability0.01.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


lyrics_danceability0.97_frequency <- lyrics_danceability0.97_frequency[order(-lyrics_danceability0.97_frequency$Freq),]
barplot(lyrics_danceability0.97_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_danceability0.97_frequency[1:40,]$tolower.lyrics_danceability0.97.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        

#Duration

lyrics_duration2000000_frequency <- lyrics_duration2000000_frequency[order(-lyrics_duration2000000_frequency$Freq),]
barplot(lyrics_duration2000000_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_duration2000000_frequency[1:40,]$tolower.lyrics_duration2000000.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")



lyrics_duration5000_frequency <- lyrics_duration5000_frequency[order(-lyrics_duration5000_frequency$Freq),]
barplot(lyrics_duration5000_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_duration5000_frequency[1:40,]$tolower.lyrics_duration5000.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        

#Energy

lyrics_energy0.00_frequency <- lyrics_energy0.00_frequency[order(-lyrics_energy0.00_frequency$Freq),]
barplot(lyrics_energy0.00_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_energy0.00_frequency[1:40,]$tolower.lyrics_energy0.00.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        
        
#Explicitness

lyrics_explicitTRUE_frequency <- lyrics_explicitTRUE_frequency[order(-lyrics_explicitTRUE_frequency$Freq),]
barplot(lyrics_explicitTRUE_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_explicitTRUE_frequency[1:40,]$tolower.lyrics_explicitTRUE.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        
        
#Instumentalness

lyrics_instrumentalness0.995_frequency <- lyrics_instrumentalness0.995_frequency[order(-lyrics_instrumentalness0.995_frequency$Freq),]
barplot(lyrics_instrumentalness0.995_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_instrumentalness0.995_frequency[1:40,]$tolower.lyrics_instrumentalness0.995.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        
        
#Liveness

lyrics_liveness0.0_frequency <- lyrics_liveness0.0_frequency[order(-lyrics_liveness0.0_frequency$Freq),]
barplot(lyrics_liveness0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_liveness0.0_frequency[1:40,]$tolower.lyrics_liveness0.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


lyrics_liveness0.997_frequency <- lyrics_liveness0.997_frequency[order(-lyrics_liveness0.997_frequency$Freq),]
barplot(lyrics_liveness0.997_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_liveness0.997_frequency[1:40,]$tolower.lyrics_liveness0.997.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

#Loudness

lyrics_loudness0.0_frequency <- lyrics_loudness0.0_frequency[order(-lyrics_loudness0.0_frequency$Freq),]
barplot(lyrics_loudness0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_loudness0.0_frequency[1:40,]$tolower.lyrics_loudness0.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


lyrics_loudness60.0_frequency <- lyrics_loudness60.0_frequency[order(-lyrics_loudness60.0_frequency$Freq),]
barplot(lyrics_loudness60.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_loudness60.0_frequency[1:40,]$tolower.lyrics_loudness60.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        
        
#Speechiness

lyrics_speechiness0.0_frequency <- lyrics_speechiness0.0_frequency[order(-lyrics_speechiness0.0_frequency$Freq),]
barplot(lyrics_speechiness0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_speechiness0.0_frequency[1:40,]$tolower.lyrics_speechiness0.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


lyrics_speechiness0.96_frequency <- lyrics_speechiness0.96_frequency[order(-lyrics_speechiness0.96_frequency$Freq),]
barplot(lyrics_speechiness0.96_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_speechiness0.96_frequency[1:40,]$tolower.lyrics_speechiness0.96.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        
        
#Tempo

lyrics_tempo0.0_frequency <- lyrics_tempo0.0_frequency[order(-lyrics_tempo0.0_frequency$Freq),]
barplot(lyrics_tempo0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_tempo0.0_frequency[1:40,]$tolower.lyrics_tempo0.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")



lyrics_tempo225.0_frequency <- lyrics_tempo225.0_frequency[order(-lyrics_tempo225.0_frequency$Freq),]
barplot(lyrics_tempo225.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_tempo225.0_frequency[1:40,]$tolower.lyrics_tempo225.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
        

#Valence

lyrics_valence0.0_frequency <- lyrics_valence0.0_frequency[order(-lyrics_valence0.0_frequency$Freq),]
barplot(lyrics_valence0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_valence0.0_frequency[1:40,]$tolower.lyrics_valence0.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


lyrics_valence0.98_frequency <- lyrics_valence0.98_frequency[order(-lyrics_valence0.98_frequency$Freq),]
barplot(lyrics_valence0.98_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_valence0.98_frequency[1:40,]$tolower.lyrics_valence0.98.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
