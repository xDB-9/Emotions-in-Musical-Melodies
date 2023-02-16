library(reshape)
library(tidyverse)


##############################################################################################################
#Loading the necessary libraries

lyrics_sad_songs <- c(mean(lyrics_acousticness_upcoming0.01_frequency$tolower.lyrics_acousticness_upcoming0.01. %in% sad_words$word),
                      mean(lyrics_acousticness_upcoming0.75_frequency$tolower.lyrics_acousticness_upcoming0.75. %in% sad_words$word),
                      mean(lyrics_danceability_upcoming0.3_frequency$tolower.lyrics_danceability_upcoming0.3. %in% sad_words$word),
                      mean(lyrics_danceability_upcoming0.8_frequency$tolower.lyrics_danceability_upcoming0.8. %in% sad_words$word),
                      mean(lyrics_duration_upcoming400000_frequency$tolower.lyrics_duration_upcoming400000. %in% sad_words$word),
                      mean(lyrics_energy_upcoming0.2_frequency$tolower.lyrics_energy_upcoming0.2. %in% sad_words$word),
                      mean(lyrics_energy_upcoming0.85_frequency$tolower.lyrics_energy_upcoming0.85. %in% sad_words$word),
                      mean(lyrics_explicit_upcomingTRUE_frequency$tolower.lyrics_explicit_upcomingTRUE. %in% sad_words$word),
                      mean(lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 %in% sad_words$word),
                      mean(lyrics_speechiness_upcoming0.7_frequency$tolower.lyrics_speechiness_upcoming0.7. %in% sad_words$word),
                      mean(lyrics_speechiness_upcoming0.03_frequency$tolower.lyrics_speechiness_upcoming0.03. %in% sad_words$word),
                      mean(lyrics_tempo_upcoming185_frequency$tolower.lyrics_tempo_upcoming185. %in% sad_words$word),
                      mean(lyrics_valence_upcoming0.1_frequency$tolower.lyrics_valence_upcoming0.1. %in% sad_words$word),
                      mean(lyrics_valence_upcoming0.85_frequency$tolower.lyrics_valence_upcoming0.85. %in% sad_words$word))

lyrics_angry_songs <- c(mean(lyrics_acousticness_upcoming0.01_frequency$tolower.lyrics_acousticness_upcoming0.01. %in% angry_words$word),
                      mean(lyrics_acousticness_upcoming0.75_frequency$tolower.lyrics_acousticness_upcoming0.75. %in% angry_words$word),
                      mean(lyrics_danceability_upcoming0.3_frequency$tolower.lyrics_danceability_upcoming0.3. %in% angry_words$word),
                      mean(lyrics_danceability_upcoming0.8_frequency$tolower.lyrics_danceability_upcoming0.8. %in% angry_words$word),
                      mean(lyrics_duration_upcoming400000_frequency$tolower.lyrics_duration_upcoming400000. %in% angry_words$word),
                      mean(lyrics_energy_upcoming0.2_frequency$tolower.lyrics_energy_upcoming0.2. %in% angry_words$word),
                      mean(lyrics_energy_upcoming0.85_frequency$tolower.lyrics_energy_upcoming0.85. %in% angry_words$word),
                      mean(lyrics_explicit_upcomingTRUE_frequency$tolower.lyrics_explicit_upcomingTRUE. %in% angry_words$word),
                      mean(lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 %in% angry_words$word),
                      mean(lyrics_speechiness_upcoming0.7_frequency$tolower.lyrics_speechiness_upcoming0.7. %in% angry_words$word),
                      mean(lyrics_speechiness_upcoming0.03_frequency$tolower.lyrics_speechiness_upcoming0.03. %in% angry_words$word),
                      mean(lyrics_tempo_upcoming185_frequency$tolower.lyrics_tempo_upcoming185. %in% angry_words$word),
                      mean(lyrics_valence_upcoming0.1_frequency$tolower.lyrics_valence_upcoming0.1. %in% angry_words$word),
                      mean(lyrics_valence_upcoming0.85_frequency$tolower.lyrics_valence_upcoming0.85. %in% angry_words$word))

lyrics_joyous_songs <- c(mean(lyrics_acousticness_upcoming0.01_frequency$tolower.lyrics_acousticness_upcoming0.01. %in% joy_words$word),
                        mean(lyrics_acousticness_upcoming0.75_frequency$tolower.lyrics_acousticness_upcoming0.75. %in% joy_words$word),
                        mean(lyrics_danceability_upcoming0.3_frequency$tolower.lyrics_danceability_upcoming0.3. %in% joy_words$word),
                        mean(lyrics_danceability_upcoming0.8_frequency$tolower.lyrics_danceability_upcoming0.8. %in% joy_words$word),
                        mean(lyrics_duration_upcoming400000_frequency$tolower.lyrics_duration_upcoming400000. %in% joy_words$word),
                        mean(lyrics_energy_upcoming0.2_frequency$tolower.lyrics_energy_upcoming0.2. %in% joy_words$word),
                        mean(lyrics_energy_upcoming0.85_frequency$tolower.lyrics_energy_upcoming0.85. %in% joy_words$word),
                        mean(lyrics_explicit_upcomingTRUE_frequency$tolower.lyrics_explicit_upcomingTRUE. %in% joy_words$word),
                        mean(lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 %in% joy_words$word),
                        mean(lyrics_speechiness_upcoming0.7_frequency$tolower.lyrics_speechiness_upcoming0.7. %in% joy_words$word),
                        mean(lyrics_speechiness_upcoming0.03_frequency$tolower.lyrics_speechiness_upcoming0.03. %in% joy_words$word),
                        mean(lyrics_tempo_upcoming185_frequency$tolower.lyrics_tempo_upcoming185. %in% joy_words$word),
                        mean(lyrics_valence_upcoming0.1_frequency$tolower.lyrics_valence_upcoming0.1. %in% joy_words$word),
                        mean(lyrics_valence_upcoming0.85_frequency$tolower.lyrics_valence_upcoming0.85. %in% joy_words$word))

lyrics_positive_songs <- c(mean(lyrics_acousticness_upcoming0.01_frequency$tolower.lyrics_acousticness_upcoming0.01. %in% positive_words$word),
                         mean(lyrics_acousticness_upcoming0.75_frequency$tolower.lyrics_acousticness_upcoming0.75. %in% positive_words$word),
                         mean(lyrics_danceability_upcoming0.3_frequency$tolower.lyrics_danceability_upcoming0.3. %in% positive_words$word),
                         mean(lyrics_danceability_upcoming0.8_frequency$tolower.lyrics_danceability_upcoming0.8. %in% positive_words$word),
                         mean(lyrics_duration_upcoming400000_frequency$tolower.lyrics_duration_upcoming400000. %in% positive_words$word),
                         mean(lyrics_energy_upcoming0.2_frequency$tolower.lyrics_energy_upcoming0.2. %in% positive_words$word),
                         mean(lyrics_energy_upcoming0.85_frequency$tolower.lyrics_energy_upcoming0.85. %in% positive_words$word),
                         mean(lyrics_explicit_upcomingTRUE_frequency$tolower.lyrics_explicit_upcomingTRUE. %in% positive_words$word),
                         mean(lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 %in% positive_words$word),
                         mean(lyrics_speechiness_upcoming0.7_frequency$tolower.lyrics_speechiness_upcoming0.7. %in% positive_words$word),
                         mean(lyrics_speechiness_upcoming0.03_frequency$tolower.lyrics_speechiness_upcoming0.03. %in% positive_words$word),
                         mean(lyrics_tempo_upcoming185_frequency$tolower.lyrics_tempo_upcoming185. %in% positive_words$word),
                         mean(lyrics_valence_upcoming0.1_frequency$tolower.lyrics_valence_upcoming0.1. %in% positive_words$word),
                         mean(lyrics_valence_upcoming0.85_frequency$tolower.lyrics_valence_upcoming0.85. %in% positive_words$word))

lyrics_fear_songs <- c(mean(lyrics_acousticness_upcoming0.01_frequency$tolower.lyrics_acousticness_upcoming0.01. %in% fear_words$word),
                         mean(lyrics_acousticness_upcoming0.75_frequency$tolower.lyrics_acousticness_upcoming0.75. %in% fear_words$word),
                         mean(lyrics_danceability_upcoming0.3_frequency$tolower.lyrics_danceability_upcoming0.3. %in% fear_words$word),
                         mean(lyrics_danceability_upcoming0.8_frequency$tolower.lyrics_danceability_upcoming0.8. %in% fear_words$word),
                         mean(lyrics_duration_upcoming400000_frequency$tolower.lyrics_duration_upcoming400000. %in% fear_words$word),
                         mean(lyrics_energy_upcoming0.2_frequency$tolower.lyrics_energy_upcoming0.2. %in% fear_words$word),
                         mean(lyrics_energy_upcoming0.85_frequency$tolower.lyrics_energy_upcoming0.85. %in% fear_words$word),
                         mean(lyrics_explicit_upcomingTRUE_frequency$tolower.lyrics_explicit_upcomingTRUE. %in% fear_words$word),
                         mean(lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 %in% fear_words$word),
                         mean(lyrics_speechiness_upcoming0.7_frequency$tolower.lyrics_speechiness_upcoming0.7. %in% fear_words$word),
                         mean(lyrics_speechiness_upcoming0.03_frequency$tolower.lyrics_speechiness_upcoming0.03. %in% fear_words$word),
                         mean(lyrics_tempo_upcoming185_frequency$tolower.lyrics_tempo_upcoming185. %in% fear_words$word),
                         mean(lyrics_valence_upcoming0.1_frequency$tolower.lyrics_valence_upcoming0.1. %in% fear_words$word),
                         mean(lyrics_valence_upcoming0.85_frequency$tolower.lyrics_valence_upcoming0.85. %in% fear_words$word))

lyrics_trust_songs <- c(mean(lyrics_acousticness_upcoming0.01_frequency$tolower.lyrics_acousticness_upcoming0.01. %in% trust_words$word),
                         mean(lyrics_acousticness_upcoming0.75_frequency$tolower.lyrics_acousticness_upcoming0.75. %in% trust_words$word),
                         mean(lyrics_danceability_upcoming0.3_frequency$tolower.lyrics_danceability_upcoming0.3. %in% trust_words$word),
                         mean(lyrics_danceability_upcoming0.8_frequency$tolower.lyrics_danceability_upcoming0.8. %in% trust_words$word),
                         mean(lyrics_duration_upcoming400000_frequency$tolower.lyrics_duration_upcoming400000. %in% trust_words$word),
                         mean(lyrics_energy_upcoming0.2_frequency$tolower.lyrics_energy_upcoming0.2. %in% trust_words$word),
                         mean(lyrics_energy_upcoming0.85_frequency$tolower.lyrics_energy_upcoming0.85. %in% trust_words$word),
                         mean(lyrics_explicit_upcomingTRUE_frequency$tolower.lyrics_explicit_upcomingTRUE. %in% trust_words$word),
                         mean(lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 %in% trust_words$word),
                         mean(lyrics_speechiness_upcoming0.7_frequency$tolower.lyrics_speechiness_upcoming0.7. %in% trust_words$word),
                         mean(lyrics_speechiness_upcoming0.03_frequency$tolower.lyrics_speechiness_upcoming0.03. %in% trust_words$word),
                         mean(lyrics_tempo_upcoming185_frequency$tolower.lyrics_tempo_upcoming185. %in% trust_words$word),
                         mean(lyrics_valence_upcoming0.1_frequency$tolower.lyrics_valence_upcoming0.1. %in% trust_words$word),
                         mean(lyrics_valence_upcoming0.85_frequency$tolower.lyrics_valence_upcoming0.85. %in% trust_words$word))

lyrics_negative_songs <- c(mean(lyrics_acousticness_upcoming0.01_frequency$tolower.lyrics_acousticness_upcoming0.01. %in% negative_words$word),
                         mean(lyrics_acousticness_upcoming0.75_frequency$tolower.lyrics_acousticness_upcoming0.75. %in% negative_words$word),
                         mean(lyrics_danceability_upcoming0.3_frequency$tolower.lyrics_danceability_upcoming0.3. %in% negative_words$word),
                         mean(lyrics_danceability_upcoming0.8_frequency$tolower.lyrics_danceability_upcoming0.8. %in% negative_words$word),
                         mean(lyrics_duration_upcoming400000_frequency$tolower.lyrics_duration_upcoming400000. %in% negative_words$word),
                         mean(lyrics_energy_upcoming0.2_frequency$tolower.lyrics_energy_upcoming0.2. %in% negative_words$word),
                         mean(lyrics_energy_upcoming0.85_frequency$tolower.lyrics_energy_upcoming0.85. %in% negative_words$word),
                         mean(lyrics_explicit_upcomingTRUE_frequency$tolower.lyrics_explicit_upcomingTRUE. %in% negative_words$word),
                         mean(lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 %in% negative_words$word),
                         mean(lyrics_speechiness_upcoming0.7_frequency$tolower.lyrics_speechiness_upcoming0.7. %in% negative_words$word),
                         mean(lyrics_speechiness_upcoming0.03_frequency$tolower.lyrics_speechiness_upcoming0.03. %in% negative_words$word),
                         mean(lyrics_tempo_upcoming185_frequency$tolower.lyrics_tempo_upcoming185. %in% negative_words$word),
                         mean(lyrics_valence_upcoming0.1_frequency$tolower.lyrics_valence_upcoming0.1. %in% negative_words$word),
                         mean(lyrics_valence_upcoming0.85_frequency$tolower.lyrics_valence_upcoming0.85. %in% negative_words$word))

lyrics_songs_emotions <- data.frame(lyrics_sad_songs,lyrics_angry_songs,lyrics_joyous_songs, 
                                    lyrics_negative_songs, lyrics_positive_songs, lyrics_fear_songs, lyrics_trust_songs)

row.names(lyrics_songs_emotions) <- c("Acousticness Lower Limit","Acousticness Higher Limit",
                                      "Danceability Lower Limit", "Danceability Higher Limit",
                                      "Duration Upper Limit", "Energy Lower Limit", "Energy Higher Limit",
                                      "Explicit TRUE", "Loudness Higher Limit",
                                      "Speechiness Higher Limit", "Speechiness Lower Limit",
                                      "Tempo Higher Limit", "Valence Lower Limit", "Valence Higher Limit")
                             
                             
##############################################################################################################
#Created dataframe with the percent of words from lyrics in each category matching to the word category from tidywords

upcoming_artist_dataframe_function <- function(){
  upcoming_artist_dataframe <- as.data.frame(upcoming_artists_austria_list[[1]][, ])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_austria_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_brazil_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_colombia_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_france_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_germany_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_india_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_indonesia_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_japan_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_mexico_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_netherlands_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_panama_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_philippines_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_southafrica_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_spain_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_uk_list[[i]][, ]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    upcoming_artist_dataframe <- rbind( upcoming_artist_dataframe, (upcoming_artists_us_list[[i]][, ]))
  }
  upcoming_artist_dataframe <-  upcoming_artist_dataframe %>% arrange( upcoming_artist_dataframe)
  return( upcoming_artist_dataframe)
}
upcoming_artist_dataframe <- data.frame(upcoming_artist_dataframe_function())

##############################################################################################################
#a function to merge all the upcoming artist list and create a single dataframe

upcoming_artists_attributes <- as.data.frame(upcoming_artist_dataframe[,c(1,9:12,14:19,26:27,30)])
upcoming_artists_test <- upcoming_artists[-c(28,33,18,24,23,21,17,16,13,12,5),]
for(i in 1:nrow(upcoming_artists_attributes))
{
  for(j in 1:nrow(upcoming_artists_test))
  {
    if(upcoming_artists_attributes$artist_name[i] == upcoming_artists_test$X2[j])
    {
      upcoming_artists_attributes$Country[i] <- upcoming_artists_test$X1[j]
    }
  }
}
colnames(upcoming_artists_attributes) <- c("Artist Name", "Danceability", "Energy", "Keys", "Loudness", "Speechiness", "Acousticness",
                         "Instrumentalness", "Liveness", "Valence", "Tempo", "Duration","Explicit", "Track Name","Country")
upcoming_artists_attributes[c(42:113),15] <- "Austria"
upcoming_artists_attributes[c(155:784),15] <- "Spain"
upcoming_artists_attributes[c(914:923),15] <- "France"
upcoming_artists_attributes[c(924:964),15] <- "Indonesia"
upcoming_artists_attributes[c(1185:1238),15] <- "United Kingdom"

##############################################################################################################
#Some mistakes happened which I tried to debug, but hard coding was easy way out so hardcoded to avoid the errors.

lyrics_songs_emotions[nrow(lyrics_songs_emotions)+1,] <- colnames(lyrics_songs_emotions)
tlyrics_songs_emotions <- data.frame(t(lyrics_songs_emotions))
melted_lyrics_songs_emotions <- melt(tlyrics_songs_emotions, id = "X15")

##############################################################################################################
#A melted data frame for heatmap
