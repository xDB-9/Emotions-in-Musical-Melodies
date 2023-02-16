#############
#Loading the necessary libraries
library(stats)
library(ds4psy)
library(quanteda)

#############
#Preprocessing & Computing the Frequency of each word in each category

#acousticness

lyrics_acousticness_upcoming0.01 <- data.frame(lyrics_list_acousticness_upcoming0.01[[1]][[1]])
for(i in 2:length(lyrics_list_acousticness_upcoming0.01))
{
  lyrics_acousticness_upcoming0.01 <- rbind(lyrics_acousticness_upcoming0.01, lyrics_list_acousticness_upcoming0.01[[i]][[1]])
}
lyrics_acousticness_upcoming0.01 <- data.frame(na.omit(lyrics_acousticness_upcoming0.01$line))
lyrics_acousticness_upcoming0.01 <- c(lyrics_acousticness_upcoming0.01$na.omit.lyrics_acousticness_upcoming0.01.line.)
lyrics_acousticness_upcoming0.01 <- text_to_words(lyrics_acousticness_upcoming0.01)
lyrics_acousticness_upcoming0.01_frequency <- data.frame(table(lyrics_acousticness_upcoming0.01))
lyrics_acousticness_upcoming0.01_frequency <- lyrics_acousticness_upcoming0.01_frequency[lyrics_acousticness_upcoming0.01_frequency$lyrics_acousticness_upcoming0.01 != "(" | lyrics_acousticness_upcoming0.01_frequency$lyrics_acousticness_upcoming0.01 != ")"| lyrics_acousticness_upcoming0.01_frequency$lyrics_acousticness_upcoming0.01 != "-"| lyrics_acousticness_upcoming0.01_frequency$lyrics_acousticness_upcoming0.01 != "&"| lyrics_acousticness_upcoming0.01_frequency$lyrics_acousticness_upcoming0.01 != ",", ] 
lyrics_acousticness_upcoming0.01_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_acousticness_upcoming0.01), lyrics_acousticness_upcoming0.01_frequency))


lyrics_acousticness_upcoming0.75 <- data.frame(lyrics_list_acousticness_upcoming0.75[[1]][[1]])
for(i in 2:length(lyrics_list_acousticness_upcoming0.75))
{
  lyrics_acousticness_upcoming0.75 <- rbind(lyrics_acousticness_upcoming0.75, lyrics_list_acousticness_upcoming0.75[[i]][[1]])
}
lyrics_acousticness_upcoming0.75 <- data.frame(na.omit(lyrics_acousticness_upcoming0.75$line))
lyrics_acousticness_upcoming0.75 <- c(lyrics_acousticness_upcoming0.75$na.omit.lyrics_acousticness_upcoming0.75.line.)
lyrics_acousticness_upcoming0.75 <- text_to_words(lyrics_acousticness_upcoming0.75)
lyrics_acousticness_upcoming0.75_frequency <- data.frame(table(lyrics_acousticness_upcoming0.75))
lyrics_acousticness_upcoming0.75_frequency <- lyrics_acousticness_upcoming0.75_frequency[lyrics_acousticness_upcoming0.75_frequency$lyrics_acousticness_upcoming0.75 != "(" | lyrics_acousticness_upcoming0.75_frequency$lyrics_acousticness_upcoming0.75 != ")"| lyrics_acousticness_upcoming0.75_frequency$lyrics_acousticness_upcoming0.75 != "-"| lyrics_acousticness_upcoming0.75_frequency$lyrics_acousticness_upcoming0.75 != "&"| lyrics_acousticness_upcoming0.75_frequency$lyrics_acousticness_upcoming0.75 != ",", ] 
lyrics_acousticness_upcoming0.75_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_acousticness_upcoming0.75), lyrics_acousticness_upcoming0.75_frequency))


#danceability
lyrics_danceability_upcoming0.3 <- data.frame(lyrics_list_danceability_upcoming0.3[[1]][[1]])
for(i in 2:length(lyrics_list_danceability_upcoming0.3))
{
  lyrics_danceability_upcoming0.3 <- rbind(lyrics_danceability_upcoming0.3, lyrics_list_danceability_upcoming0.3[[i]][[1]])
}
lyrics_danceability_upcoming0.3 <- data.frame(na.omit(lyrics_danceability_upcoming0.3$line))
lyrics_danceability_upcoming0.3 <- c(lyrics_danceability_upcoming0.3$na.omit.lyrics_danceability_upcoming0.3.line.)
lyrics_danceability_upcoming0.3 <- text_to_words(lyrics_danceability_upcoming0.3)
lyrics_danceability_upcoming0.3_frequency <- data.frame(table(lyrics_danceability_upcoming0.3))
lyrics_danceability_upcoming0.3_frequency <- lyrics_danceability_upcoming0.3_frequency[lyrics_danceability_upcoming0.3_frequency$lyrics_danceability_upcoming0.3 != "(" | lyrics_danceability_upcoming0.3_frequency$lyrics_danceability_upcoming0.3 != ")"| lyrics_danceability_upcoming0.3_frequency$lyrics_danceability_upcoming0.3 != "-"| lyrics_danceability_upcoming0.3_frequency$lyrics_danceability_upcoming0.3 != "&"| lyrics_danceability_upcoming0.3_frequency$lyrics_danceability_upcoming0.3 != ",", ] 
lyrics_danceability_upcoming0.3_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_danceability_upcoming0.3), lyrics_danceability_upcoming0.3_frequency))


lyrics_danceability_upcoming0.8 <- data.frame(lyrics_list_danceability_upcoming0.8[[1]][[1]])
for(i in 2:length(lyrics_list_danceability_upcoming0.8))
{
  lyrics_danceability_upcoming0.8 <- rbind(lyrics_danceability_upcoming0.8, lyrics_list_danceability_upcoming0.8[[i]][[1]])
}
lyrics_danceability_upcoming0.8 <- data.frame(na.omit(lyrics_danceability_upcoming0.8$line))
lyrics_danceability_upcoming0.8 <- c(lyrics_danceability_upcoming0.8$na.omit.lyrics_danceability_upcoming0.8.line.)
lyrics_danceability_upcoming0.8 <- text_to_words(lyrics_danceability_upcoming0.8)
lyrics_danceability_upcoming0.8_frequency <- data.frame(table(lyrics_danceability_upcoming0.8))
lyrics_danceability_upcoming0.8_frequency <- lyrics_danceability_upcoming0.8_frequency[lyrics_danceability_upcoming0.8_frequency$lyrics_danceability_upcoming0.8 != "(" | lyrics_danceability_upcoming0.8_frequency$lyrics_danceability_upcoming0.8 != ")"| lyrics_danceability_upcoming0.8_frequency$lyrics_danceability_upcoming0.8 != "-"| lyrics_danceability_upcoming0.8_frequency$lyrics_danceability_upcoming0.8 != "&"| lyrics_danceability_upcoming0.8_frequency$lyrics_danceability_upcoming0.8 != ",", ] 
lyrics_danceability_upcoming0.8_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_danceability_upcoming0.8), lyrics_danceability_upcoming0.8_frequency))


#duration

lyrics_duration_upcoming400000 <- data.frame(lyrics_list_duration_upcoming400000[[1]][[1]])
for(i in 2:length(lyrics_list_duration_upcoming400000))
{
  lyrics_duration_upcoming400000 <- rbind(lyrics_duration_upcoming400000, lyrics_list_duration_upcoming400000[[i]][[1]])
}
lyrics_duration_upcoming400000 <- data.frame(na.omit(lyrics_duration_upcoming400000$line))
lyrics_duration_upcoming400000 <- c(lyrics_duration_upcoming400000$na.omit.lyrics_duration_upcoming400000.line.)
lyrics_duration_upcoming400000 <- text_to_words(lyrics_duration_upcoming400000)
lyrics_duration_upcoming400000_frequency <- data.frame(table(lyrics_duration_upcoming400000))
lyrics_duration_upcoming400000_frequency <- lyrics_duration_upcoming400000_frequency[lyrics_duration_upcoming400000_frequency$lyrics_duration_upcoming400000 != "(" | lyrics_duration_upcoming400000_frequency$lyrics_duration_upcoming400000 != ")"| lyrics_duration_upcoming400000_frequency$lyrics_duration_upcoming400000 != "-"| lyrics_duration_upcoming400000_frequency$lyrics_duration_upcoming400000 != "&"| lyrics_duration_upcoming400000_frequency$lyrics_duration_upcoming400000 != ",", ] 
lyrics_duration_upcoming400000_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_duration_upcoming400000), lyrics_duration_upcoming400000_frequency))


#energy

lyrics_energy_upcoming0.2 <- data.frame(lyrics_list_energy_upcoming0.2[[1]][[1]])
for(i in 2:length(lyrics_list_energy_upcoming0.2))
{
  lyrics_energy_upcoming0.2 <- rbind(lyrics_energy_upcoming0.2, lyrics_list_energy_upcoming0.2[[i]][[1]])
}
lyrics_energy_upcoming0.2 <- data.frame(na.omit(lyrics_energy_upcoming0.2$line))
lyrics_energy_upcoming0.2 <- c(lyrics_energy_upcoming0.2$na.omit.lyrics_energy_upcoming0.2.line.)
lyrics_energy_upcoming0.2 <- text_to_words(lyrics_energy_upcoming0.2)
lyrics_energy_upcoming0.2_frequency <- data.frame(table(lyrics_energy_upcoming0.2))
lyrics_energy_upcoming0.2_frequency <- lyrics_energy_upcoming0.2_frequency[lyrics_energy_upcoming0.2_frequency$lyrics_energy_upcoming0.2 != "(" | lyrics_energy_upcoming0.2_frequency$lyrics_energy_upcoming0.2 != ")"| lyrics_energy_upcoming0.2_frequency$lyrics_energy_upcoming0.2 != "-"| lyrics_energy_upcoming0.2_frequency$lyrics_energy_upcoming0.2 != "&"| lyrics_energy_upcoming0.2_frequency$lyrics_energy_upcoming0.2 != ",", ] 
lyrics_energy_upcoming0.2_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_energy_upcoming0.2), lyrics_energy_upcoming0.2_frequency))


lyrics_energy_upcoming0.85 <- data.frame(lyrics_list_energy_upcoming0.85[[1]][[1]])
for(i in 2:length(lyrics_list_energy_upcoming0.85))
{
  lyrics_energy_upcoming0.85 <- rbind(lyrics_energy_upcoming0.85, lyrics_list_energy_upcoming0.85[[i]][[1]])
}
lyrics_energy_upcoming0.85 <- data.frame(na.omit(lyrics_energy_upcoming0.85$line))
lyrics_energy_upcoming0.85 <- c(lyrics_energy_upcoming0.85$na.omit.lyrics_energy_upcoming0.85.line.)
lyrics_energy_upcoming0.85 <- text_to_words(lyrics_energy_upcoming0.85)
lyrics_energy_upcoming0.85_frequency <- data.frame(table(lyrics_energy_upcoming0.85))
lyrics_energy_upcoming0.85_frequency <- lyrics_energy_upcoming0.85_frequency[lyrics_energy_upcoming0.85_frequency$lyrics_energy_upcoming0.85 != "(" | lyrics_energy_upcoming0.85_frequency$lyrics_energy_upcoming0.85 != ")"| lyrics_energy_upcoming0.85_frequency$lyrics_energy_upcoming0.85 != "-"| lyrics_energy_upcoming0.85_frequency$lyrics_energy_upcoming0.85 != "&"| lyrics_energy_upcoming0.85_frequency$lyrics_energy_upcoming0.85 != ",", ] 
lyrics_energy_upcoming0.85_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_energy_upcoming0.85), lyrics_energy_upcoming0.85_frequency))


#explicitness

lyrics_explicit_upcomingTRUE <- data.frame(lyrics_list_explicit_upcomingTRUE[[1]][[1]])
for(i in 2:length(lyrics_list_explicit_upcomingTRUE))
{
  lyrics_explicit_upcomingTRUE <- rbind(lyrics_explicit_upcomingTRUE, lyrics_list_explicit_upcomingTRUE[[i]][[1]])
}
lyrics_explicit_upcomingTRUE <- data.frame(na.omit(lyrics_explicit_upcomingTRUE$line))
lyrics_explicit_upcomingTRUE <- c(lyrics_explicit_upcomingTRUE$na.omit.lyrics_explicit_upcomingTRUE.line.)
lyrics_explicit_upcomingTRUE <- text_to_words(lyrics_explicit_upcomingTRUE)
lyrics_explicit_upcomingTRUE_frequency <- data.frame(table(lyrics_explicit_upcomingTRUE))
lyrics_explicit_upcomingTRUE_frequency <- lyrics_explicit_upcomingTRUE_frequency[lyrics_explicit_upcomingTRUE_frequency$lyrics_explicit_upcomingTRUE != "(" | lyrics_explicit_upcomingTRUE_frequency$lyrics_explicit_upcomingTRUE != ")"| lyrics_explicit_upcomingTRUE_frequency$lyrics_explicit_upcomingTRUE != "-"| lyrics_explicit_upcomingTRUE_frequency$lyrics_explicit_upcomingTRUE != "&"| lyrics_explicit_upcomingTRUE_frequency$lyrics_explicit_upcomingTRUE != ",", ] 
lyrics_explicit_upcomingTRUE_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_explicit_upcomingTRUE), lyrics_explicit_upcomingTRUE_frequency))


#instrumentalness

lyrics_instrumentalness_upcoming0.85 <- data.frame(lyrics_list_instrumentalness_upcoming0.85[[1]][[1]])
for(i in 2:length(lyrics_list_instrumentalness_upcoming0.85))
{
  lyrics_instrumentalness_upcoming0.85 <- rbind(lyrics_instrumentalness_upcoming0.85, lyrics_list_instrumentalness_upcoming0.85[[i]][[1]])
}
lyrics_instrumentalness_upcoming0.85 <- data.frame(na.omit(lyrics_instrumentalness_upcoming0.85$line))
lyrics_instrumentalness_upcoming0.85 <- c(lyrics_instrumentalness_upcoming0.85$na.omit.lyrics_instrumentalness_upcoming0.85.line.)
lyrics_instrumentalness_upcoming0.85 <- gsub("( ){1,}","",lyrics_instrumentalness_upcoming0.85)
#There was a reason to include gsub at this point which was an error:
#Error in lyrics_instrumentalness_upcoming0.85_frequency$Freq : 
#  $ operator is invalid for atomic vectors
#The error persisted even after the above gsub code, thus clueless what is going wrong,we are dropping this graph from our analysis


#liveness

lyrics_liveness_upcoming0.05 <- data.frame(lyrics_list_liveness_upcoming0.05[[1]][[1]])
for(i in 2:length(lyrics_list_liveness_upcoming0.05))
{
  lyrics_liveness_upcoming0.05 <- rbind(lyrics_liveness_upcoming0.05, lyrics_list_liveness_upcoming0.05[[i]][[1]])
}
lyrics_liveness_upcoming0.05 <- data.frame(na.omit(lyrics_liveness_upcoming0.05$line))
lyrics_liveness_upcoming0.05 <- c(lyrics_liveness_upcoming0.05$na.omit.lyrics_liveness_upcoming0.05.line.)
lyrics_liveness_upcoming0.05 <- text_to_words(lyrics_liveness_upcoming0.05)
lyrics_liveness_upcoming0.05_frequency <- data.frame(table(lyrics_liveness_upcoming0.05))
lyrics_liveness_upcoming0.05_frequency <- lyrics_liveness_upcoming0.05_frequency[lyrics_liveness_upcoming0.05_frequency$lyrics_liveness_upcoming0.05 != "(" | lyrics_liveness_upcoming0.05_frequency$lyrics_liveness_upcoming0.05 != ")"| lyrics_liveness_upcoming0.05_frequency$lyrics_liveness_upcoming0.05 != "-"| lyrics_liveness_upcoming0.05_frequency$lyrics_liveness_upcoming0.05 != "&"| lyrics_liveness_upcoming0.05_frequency$lyrics_liveness_upcoming0.05 != ",", ] 
lyrics_liveness_upcoming0.05_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_liveness_upcoming0.05), lyrics_liveness_upcoming0.05_frequency))


lyrics_liveness_upcoming0.75 <- data.frame(lyrics_list_liveness_upcoming0.75[[1]][[1]])
for(i in 2:length(lyrics_list_liveness_upcoming0.75))
{
  lyrics_liveness_upcoming0.75 <- rbind(lyrics_liveness_upcoming0.75, lyrics_list_liveness_upcoming0.75[[i]][[1]])
}
lyrics_liveness_upcoming0.75 <- data.frame(na.omit(lyrics_liveness_upcoming0.75$line))
lyrics_liveness_upcoming0.75 <- c(lyrics_liveness_upcoming0.75$na.omit.lyrics_liveness_upcoming0.75.line.)
lyrics_liveness_upcoming0.75 <- text_to_words(lyrics_liveness_upcoming0.75)
lyrics_liveness_upcoming0.75_frequency <- data.frame(table(lyrics_liveness_upcoming0.75))
lyrics_liveness_upcoming0.75_frequency <- lyrics_liveness_upcoming0.75_frequency[lyrics_liveness_upcoming0.75_frequency$lyrics_liveness_upcoming0.75 != "(" | lyrics_liveness_upcoming0.75_frequency$lyrics_liveness_upcoming0.75 != ")"| lyrics_liveness_upcoming0.75_frequency$lyrics_liveness_upcoming0.75 != "-"| lyrics_liveness_upcoming0.75_frequency$lyrics_liveness_upcoming0.75 != "&"| lyrics_liveness_upcoming0.75_frequency$lyrics_liveness_upcoming0.75 != ",", ] 
lyrics_liveness_upcoming0.75_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_liveness_upcoming0.75), lyrics_liveness_upcoming0.75_frequency))


#loudness

lyrics_loudness_upcoming_20 <- data.frame(lyrics_list_loudness_upcoming_20[[1]][[1]])
for(i in 2:length(lyrics_list_loudness_upcoming_20))
{
  lyrics_loudness_upcoming_20 <- rbind(lyrics_loudness_upcoming_20, lyrics_list_loudness_upcoming_20[[i]][[1]])
}
lyrics_loudness_upcoming_20 <- data.frame(na.omit(lyrics_loudness_upcoming_20$line))
lyrics_loudness_upcoming_20 <- c(lyrics_loudness_upcoming_20$na.omit.lyrics_loudness_upcoming_20.line.)
lyrics_loudness_upcoming_20 <- text_to_words(lyrics_loudness_upcoming_20)
lyrics_loudness_upcoming_20_frequency <- data.frame(table(lyrics_loudness_upcoming_20))
lyrics_loudness_upcoming_20_frequency <- lyrics_loudness_upcoming_20_frequency[lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 != "(" | lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 != ")"| lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 != "-"| lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 != "&"| lyrics_loudness_upcoming_20_frequency$lyrics_loudness_upcoming_20 != ",", ] 


#speechiness

lyrics_speechiness_upcoming0.03 <- data.frame(lyrics_list_speechiness_upcoming0.03[[1]][[1]])
for(i in 2:length(lyrics_list_speechiness_upcoming0.03))
{
  lyrics_speechiness_upcoming0.03 <- rbind(lyrics_speechiness_upcoming0.03, lyrics_list_speechiness_upcoming0.03[[i]][[1]])
}
lyrics_speechiness_upcoming0.03 <- data.frame(na.omit(lyrics_speechiness_upcoming0.03$line))
lyrics_speechiness_upcoming0.03 <- c(lyrics_speechiness_upcoming0.03$na.omit.lyrics_speechiness_upcoming0.03.line.)
lyrics_speechiness_upcoming0.03 <- text_to_words(lyrics_speechiness_upcoming0.03)
lyrics_speechiness_upcoming0.03_frequency <- data.frame(table(lyrics_speechiness_upcoming0.03))
lyrics_speechiness_upcoming0.03_frequency <- lyrics_speechiness_upcoming0.03_frequency[lyrics_speechiness_upcoming0.03_frequency$lyrics_speechiness_upcoming0.03 != "(" | lyrics_speechiness_upcoming0.03_frequency$lyrics_speechiness_upcoming0.03 != ")"| lyrics_speechiness_upcoming0.03_frequency$lyrics_speechiness_upcoming0.03 != "-"| lyrics_speechiness_upcoming0.03_frequency$lyrics_speechiness_upcoming0.03 != "&"| lyrics_speechiness_upcoming0.03_frequency$lyrics_speechiness_upcoming0.03 != ",", ] 
lyrics_speechiness_upcoming0.03_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_speechiness_upcoming0.03), lyrics_speechiness_upcoming0.03_frequency))


lyrics_speechiness_upcoming0.7 <- data.frame(lyrics_list_speechiness_upcoming0.7[[1]][[1]])
for(i in 2:length(lyrics_list_speechiness_upcoming0.7))
{
  lyrics_speechiness_upcoming0.7 <- rbind(lyrics_speechiness_upcoming0.7, lyrics_list_speechiness_upcoming0.7[[i]][[1]])
}
lyrics_speechiness_upcoming0.7 <- data.frame(na.omit(lyrics_speechiness_upcoming0.7$line))
lyrics_speechiness_upcoming0.7 <- c(lyrics_speechiness_upcoming0.7$na.omit.lyrics_speechiness_upcoming0.7.line.)
lyrics_speechiness_upcoming0.7 <- text_to_words(lyrics_speechiness_upcoming0.7)
lyrics_speechiness_upcoming0.7_frequency <- data.frame(table(lyrics_speechiness_upcoming0.7))
lyrics_speechiness_upcoming0.7_frequency <- lyrics_speechiness_upcoming0.7_frequency[lyrics_speechiness_upcoming0.7_frequency$lyrics_speechiness_upcoming0.7 != "(" | lyrics_speechiness_upcoming0.7_frequency$lyrics_speechiness_upcoming0.7 != ")"| lyrics_speechiness_upcoming0.7_frequency$lyrics_speechiness_upcoming0.7 != "-"| lyrics_speechiness_upcoming0.7_frequency$lyrics_speechiness_upcoming0.7 != "&"| lyrics_speechiness_upcoming0.7_frequency$lyrics_speechiness_upcoming0.7 != ",", ] 
lyrics_speechiness_upcoming0.7_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_speechiness_upcoming0.7), lyrics_speechiness_upcoming0.7_frequency))


#tempo

lyrics_tempo_upcoming185 <- data.frame(lyrics_list_tempo_upcoming185[[1]][[1]])
for(i in 2:length(lyrics_list_tempo_upcoming185))
{
  lyrics_tempo_upcoming185 <- rbind(lyrics_tempo_upcoming185, lyrics_list_tempo_upcoming185[[i]][[1]])
}
lyrics_tempo_upcoming185 <- data.frame(na.omit(lyrics_tempo_upcoming185$line))
lyrics_tempo_upcoming185 <- c(lyrics_tempo_upcoming185$na.omit.lyrics_tempo_upcoming185.line.)
lyrics_tempo_upcoming185 <- text_to_words(lyrics_tempo_upcoming185)
lyrics_tempo_upcoming185_frequency <- data.frame(table(lyrics_tempo_upcoming185))
lyrics_tempo_upcoming185_frequency <- lyrics_tempo_upcoming185_frequency[lyrics_tempo_upcoming185_frequency$lyrics_tempo_upcoming185 != "(" | lyrics_tempo_upcoming185_frequency$lyrics_tempo_upcoming185 != ")"| lyrics_tempo_upcoming185_frequency$lyrics_tempo_upcoming185 != "-"| lyrics_tempo_upcoming185_frequency$lyrics_tempo_upcoming185 != "&"| lyrics_tempo_upcoming185_frequency$lyrics_tempo_upcoming185 != ",", ] 
lyrics_tempo_upcoming185_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_tempo_upcoming185), lyrics_tempo_upcoming185_frequency))


#valence

lyrics_valence_upcoming0.1 <- data.frame(lyrics_list_valence_upcoming0.1[[1]][[1]])
for(i in 2:length(lyrics_list_valence_upcoming0.1))
{
  lyrics_valence_upcoming0.1 <- rbind(lyrics_valence_upcoming0.1, lyrics_list_valence_upcoming0.1[[i]][[1]])
}
lyrics_valence_upcoming0.1 <- data.frame(na.omit(lyrics_valence_upcoming0.1$line))
lyrics_valence_upcoming0.1 <- c(lyrics_valence_upcoming0.1$na.omit.lyrics_valence_upcoming0.1.line.)
lyrics_valence_upcoming0.1 <- text_to_words(lyrics_valence_upcoming0.1)
lyrics_valence_upcoming0.1_frequency <- data.frame(table(lyrics_valence_upcoming0.1))
lyrics_valence_upcoming0.1_frequency <- lyrics_valence_upcoming0.1_frequency[lyrics_valence_upcoming0.1_frequency$lyrics_valence_upcoming0.1 != "(" | lyrics_valence_upcoming0.1_frequency$lyrics_valence_upcoming0.1 != ")"| lyrics_valence_upcoming0.1_frequency$lyrics_valence_upcoming0.1 != "-"| lyrics_valence_upcoming0.1_frequency$lyrics_valence_upcoming0.1 != "&"| lyrics_valence_upcoming0.1_frequency$lyrics_valence_upcoming0.1 != ",", ] 
lyrics_valence_upcoming0.1_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_valence_upcoming0.1), lyrics_valence_upcoming0.1_frequency))


lyrics_valence_upcoming0.85 <- data.frame(lyrics_list_valence_upcoming0.85[[1]][[1]])
for(i in 2:length(lyrics_list_valence_upcoming0.85))
{
  lyrics_valence_upcoming0.85 <- rbind(lyrics_valence_upcoming0.85, lyrics_list_valence_upcoming0.85[[i]][[1]])
}
lyrics_valence_upcoming0.85 <- data.frame(na.omit(lyrics_valence_upcoming0.85$line))
lyrics_valence_upcoming0.85 <- c(lyrics_valence_upcoming0.85$na.omit.lyrics_valence_upcoming0.85.line.)
lyrics_valence_upcoming0.85 <- text_to_words(lyrics_valence_upcoming0.85)
lyrics_valence_upcoming0.85_frequency <- data.frame(table(lyrics_valence_upcoming0.85))
lyrics_valence_upcoming0.85_frequency <- lyrics_valence_upcoming0.85_frequency[lyrics_valence_upcoming0.85_frequency$lyrics_valence_upcoming0.85 != "(" | lyrics_valence_upcoming0.85_frequency$lyrics_valence_upcoming0.85 != ")"| lyrics_valence_upcoming0.85_frequency$lyrics_valence_upcoming0.85 != "-"| lyrics_valence_upcoming0.85_frequency$lyrics_valence_upcoming0.85 != "&"| lyrics_valence_upcoming0.85_frequency$lyrics_valence_upcoming0.85 != ",", ] 
lyrics_valence_upcoming0.85_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_valence_upcoming0.85), lyrics_valence_upcoming0.85_frequency))
