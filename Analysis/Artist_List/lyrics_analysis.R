#############
#Loading the necessary libraries
library(stats)
library(ds4psy)
library(quanteda)

#############
#Preprocessing & Computing the Frequency of each word in each category

#acousticness

lyrics_acousticness0.01 <- data.frame(lyrics_list_acousticness0.01[[1]][[1]])
for(i in 2:length(lyrics_list_acousticness0.01))
{
  lyrics_acousticness0.01 <- rbind(lyrics_acousticness0.01, lyrics_list_acousticness0.01[[i]][[1]])
}
lyrics_acousticness0.01 <- data.frame(na.omit(lyrics_acousticness0.01$line))
lyrics_acousticness0.01 <- c(lyrics_acousticness0.01$na.omit.lyrics_acousticness0.01.line.)
lyrics_acousticness0.01 <- text_to_words(lyrics_acousticness0.01)
lyrics_acousticness0.01_frequency <- data.frame(table(lyrics_acousticness0.01))
lyrics_acousticness0.01_frequency <- lyrics_acousticness0.01_frequency[lyrics_acousticness0.01_frequency$lyrics_acousticness0.01 != "(" | lyrics_acousticness0.01_frequency$lyrics_acousticness0.01 != ")"| lyrics_acousticness0.01_frequency$lyrics_acousticness0.01 != "-"| lyrics_acousticness0.01_frequency$lyrics_acousticness0.01 != "&"| lyrics_acousticness0.01_frequency$lyrics_acousticness0.01 != ",", ] 
lyrics_acousticness0.01_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_acousticness0.01), lyrics_acousticness0.01_frequency))


lyrics_acousticness0.995 <- data.frame(lyrics_list_acousticness0.995[[1]][[1]])
for(i in 2:length(lyrics_list_acousticness0.995))
{
  lyrics_acousticness0.995 <- rbind(lyrics_acousticness0.995, lyrics_list_acousticness0.995[[i]][[1]])
}
lyrics_acousticness0.995 <- data.frame(na.omit(lyrics_acousticness0.995$line))
lyrics_acousticness0.995 <- c(lyrics_acousticness0.995$na.omit.lyrics_acousticness0.995.line.)
lyrics_acousticness0.995 <- text_to_words(lyrics_acousticness0.995)
lyrics_acousticness0.995_frequency <- data.frame(table(lyrics_acousticness0.995))
lyrics_acousticness0.995_frequency <- lyrics_acousticness0.995_frequency[lyrics_acousticness0.995_frequency$lyrics_acousticness0.995 != "(" | lyrics_acousticness0.995_frequency$lyrics_acousticness0.995 != ")"| lyrics_acousticness0.995_frequency$lyrics_acousticness0.995 != "-"| lyrics_acousticness0.995_frequency$lyrics_acousticness0.995 != "&"| lyrics_acousticness0.995_frequency$lyrics_acousticness0.995 != ",", ] 
lyrics_acousticness0.995_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_acousticness0.995), lyrics_acousticness0.995_frequency))


#danceability

lyrics_danceability0.01 <- data.frame(lyrics_list_danceability0.01[[1]][[1]])
for(i in 2:length(lyrics_list_danceability0.01))
{
  lyrics_danceability0.01 <- rbind(lyrics_danceability0.01, lyrics_list_danceability0.01[[i]][[1]])
}
lyrics_danceability0.01 <- data.frame(na.omit(lyrics_danceability0.01$line))
lyrics_danceability0.01 <- c(lyrics_danceability0.01$na.omit.lyrics_danceability0.01.line.)
lyrics_danceability0.01 <- text_to_words(lyrics_danceability0.01)
lyrics_danceability0.01_frequency <- data.frame(table(lyrics_danceability0.01))
lyrics_danceability0.01_frequency <- lyrics_danceability0.01_frequency[lyrics_danceability0.01_frequency$lyrics_danceability0.01 != "(" | lyrics_danceability0.01_frequency$lyrics_danceability0.01 != ")"| lyrics_danceability0.01_frequency$lyrics_danceability0.01 != "-"| lyrics_danceability0.01_frequency$lyrics_danceability0.01 != "&"| lyrics_danceability0.01_frequency$lyrics_danceability0.01 != ",", ] 
lyrics_danceability0.01_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_danceability0.01), lyrics_danceability0.01_frequency))


lyrics_danceability0.97 <- data.frame(lyrics_list_danceability0.97[[1]][[1]])
for(i in 2:length(lyrics_list_danceability0.97))
{
  lyrics_danceability0.97 <- rbind(lyrics_danceability0.97, lyrics_list_danceability0.97[[i]][[1]])
}
lyrics_danceability0.97 <- data.frame(na.omit(lyrics_danceability0.97$line))
lyrics_danceability0.97 <- c(lyrics_danceability0.97$na.omit.lyrics_danceability0.97.line.)
lyrics_danceability0.97 <- text_to_words(lyrics_danceability0.97)
lyrics_danceability0.97_frequency <- data.frame(table(lyrics_danceability0.97))
lyrics_danceability0.97_frequency <- lyrics_danceability0.97_frequency[lyrics_danceability0.97_frequency$lyrics_danceability0.97 != "(" | lyrics_danceability0.97_frequency$lyrics_danceability0.97 != ")"| lyrics_danceability0.97_frequency$lyrics_danceability0.97 != "-"| lyrics_danceability0.97_frequency$lyrics_danceability0.97 != "&"| lyrics_danceability0.97_frequency$lyrics_danceability0.97 != ",", ] 
lyrics_danceability0.97_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_danceability0.97), lyrics_danceability0.97_frequency))


#duration

lyrics_duration2000000 <- data.frame(lyrics_list_duration2000000[[1]][[1]])
for(i in 2:length(lyrics_list_duration2000000))
{
  lyrics_duration2000000 <- rbind(lyrics_duration2000000, lyrics_list_duration2000000[[i]][[1]])
}
lyrics_duration2000000 <- data.frame(na.omit(lyrics_duration2000000$line))
lyrics_duration2000000 <- c(lyrics_duration2000000$na.omit.lyrics_duration2000000.line.)
lyrics_duration2000000 <- text_to_words(lyrics_duration2000000)
lyrics_duration2000000_frequency <- data.frame(table(lyrics_duration2000000))
lyrics_duration2000000_frequency <- lyrics_duration2000000_frequency[lyrics_duration2000000_frequency$lyrics_duration2000000 != "(" | lyrics_duration2000000_frequency$lyrics_duration2000000 != ")"| lyrics_duration2000000_frequency$lyrics_duration2000000 != "-"| lyrics_duration2000000_frequency$lyrics_duration2000000 != "&"| lyrics_duration2000000_frequency$lyrics_duration2000000 != ",", ] 
lyrics_duration2000000_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_duration2000000), lyrics_duration2000000_frequency))


lyrics_duration5000 <- data.frame(lyrics_list_duration5000[[1]][[1]])
for(i in 2:length(lyrics_list_duration5000))
{
  lyrics_duration5000 <- rbind(lyrics_duration5000, lyrics_list_duration5000[[i]][[1]])
}
lyrics_duration5000 <- data.frame(na.omit(lyrics_duration5000$line))
lyrics_duration5000 <- c(lyrics_duration5000$na.omit.lyrics_duration5000.line.)
lyrics_duration5000 <- text_to_words(lyrics_duration5000)
lyrics_duration5000_frequency <- data.frame(table(lyrics_duration5000))
lyrics_duration5000_frequency <- lyrics_duration5000_frequency[lyrics_duration5000_frequency$lyrics_duration5000 != "(" | lyrics_duration5000_frequency$lyrics_duration5000 != ")"| lyrics_duration5000_frequency$lyrics_duration5000 != "-"| lyrics_duration5000_frequency$lyrics_duration5000 != "&"| lyrics_duration5000_frequency$lyrics_duration5000 != ",", ] 
lyrics_duration5000_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_duration5000), lyrics_duration5000_frequency))


#energy

lyrics_energy0.00 <- data.frame(lyrics_list_energy0.00[[1]][[1]])
for(i in 2:length(lyrics_list_energy0.00))
{
  lyrics_energy0.00 <- rbind(lyrics_energy0.00, lyrics_list_energy0.00[[i]][[1]])
}
lyrics_energy0.00 <- data.frame(na.omit(lyrics_energy0.00$line))
lyrics_energy0.00 <- c(lyrics_energy0.00$na.omit.lyrics_energy0.00.line.)
lyrics_energy0.00 <- text_to_words(lyrics_energy0.00)
lyrics_energy0.00_frequency <- data.frame(table(lyrics_energy0.00))
lyrics_energy0.00_frequency <- lyrics_energy0.00_frequency[lyrics_energy0.00_frequency$lyrics_energy0.00 != "(" | lyrics_energy0.00_frequency$lyrics_energy0.00 != ")"| lyrics_energy0.00_frequency$lyrics_energy0.00 != "-"| lyrics_energy0.00_frequency$lyrics_energy0.00 != "&"| lyrics_energy0.00_frequency$lyrics_energy0.00 != ",", ] 
lyrics_energy0.00_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_energy0.00), lyrics_energy0.00_frequency))


#explicitness

lyrics_explicitTRUE <- data.frame(lyrics_list_explicitTRUE[[1]][[1]])
for(i in 2:length(lyrics_list_explicitTRUE))
{
  lyrics_explicitTRUE <- rbind(lyrics_explicitTRUE, lyrics_list_explicitTRUE[[i]][[1]])
}
lyrics_explicitTRUE <- data.frame(na.omit(lyrics_explicitTRUE$line))
lyrics_explicitTRUE <- c(lyrics_explicitTRUE$na.omit.lyrics_explicitTRUE.line.)
lyrics_explicitTRUE <- text_to_words(lyrics_explicitTRUE)
lyrics_explicitTRUE_frequency <- data.frame(table(lyrics_explicitTRUE))
lyrics_explicitTRUE_frequency <- lyrics_explicitTRUE_frequency[lyrics_explicitTRUE_frequency$lyrics_explicitTRUE != "(" | lyrics_explicitTRUE_frequency$lyrics_explicitTRUE != ")"| lyrics_explicitTRUE_frequency$lyrics_explicitTRUE != "-"| lyrics_explicitTRUE_frequency$lyrics_explicitTRUE != "&"| lyrics_explicitTRUE_frequency$lyrics_explicitTRUE != ",", ] 
lyrics_explicitTRUE_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_explicitTRUE), lyrics_explicitTRUE_frequency))


#instrumentalness

lyrics_instrumentalness0.995 <- data.frame(lyrics_list_instrumentalness0.995[[1]][[1]])
for(i in 2:length(lyrics_list_instrumentalness0.995))
{
  lyrics_instrumentalness0.995 <- rbind(lyrics_instrumentalness0.995, lyrics_list_instrumentalness0.995[[i]][[1]])
}
lyrics_instrumentalness0.995 <- data.frame(na.omit(lyrics_instrumentalness0.995$line))
lyrics_instrumentalness0.995 <- c(lyrics_instrumentalness0.995$na.omit.lyrics_instrumentalness0.995.line.)
lyrics_instrumentalness0.995 <- text_to_words(lyrics_instrumentalness0.995)
lyrics_instrumentalness0.995_frequency <- data.frame(table(lyrics_instrumentalness0.995))
lyrics_instrumentalness0.995_frequency <- lyrics_instrumentalness0.995_frequency[lyrics_instrumentalness0.995_frequency$lyrics_instrumentalness0.995 != "(" | lyrics_instrumentalness0.995_frequency$lyrics_instrumentalness0.995 != ")"| lyrics_instrumentalness0.995_frequency$lyrics_instrumentalness0.995 != "-"| lyrics_instrumentalness0.995_frequency$lyrics_instrumentalness0.995 != "&"| lyrics_instrumentalness0.995_frequency$lyrics_instrumentalness0.995 != ",", ] 
lyrics_instrumentalness0.995_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_instrumentalness0.995), lyrics_instrumentalness0.995_frequency))


#liveness

lyrics_liveness0.0 <- data.frame(lyrics_list_liveness0.0[[1]][[1]])
for(i in 2:length(lyrics_list_liveness0.0))
{
  lyrics_liveness0.0 <- rbind(lyrics_liveness0.0, lyrics_list_liveness0.0[[i]][[1]])
}
lyrics_liveness0.0 <- data.frame(na.omit(lyrics_liveness0.0$line))
lyrics_liveness0.0 <- c(lyrics_liveness0.0$na.omit.lyrics_liveness0.0.line.)
lyrics_liveness0.0 <- text_to_words(lyrics_liveness0.0)
lyrics_liveness0.0_frequency <- data.frame(table(lyrics_liveness0.0))
lyrics_liveness0.0_frequency <- lyrics_liveness0.0_frequency[lyrics_liveness0.0_frequency$lyrics_liveness0.0 != "(" | lyrics_liveness0.0_frequency$lyrics_liveness0.0 != ")"| lyrics_liveness0.0_frequency$lyrics_liveness0.0 != "-"| lyrics_liveness0.0_frequency$lyrics_liveness0.0 != "&"| lyrics_liveness0.0_frequency$lyrics_liveness0.0 != ",", ] 
lyrics_liveness0.0_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_liveness0.0), lyrics_liveness0.0_frequency))


lyrics_liveness0.997 <- data.frame(lyrics_list_liveness0.997[[1]][[1]])
for(i in 2:length(lyrics_list_liveness0.997))
{
  lyrics_liveness0.997 <- rbind(lyrics_liveness0.997, lyrics_list_liveness0.997[[i]][[1]])
}
lyrics_liveness0.997 <- data.frame(na.omit(lyrics_liveness0.997$line))
lyrics_liveness0.997 <- c(lyrics_liveness0.997$na.omit.lyrics_liveness0.997.line.)
lyrics_liveness0.997 <- text_to_words(lyrics_liveness0.997)
lyrics_liveness0.997_frequency <- data.frame(table(lyrics_liveness0.997))
lyrics_liveness0.997_frequency <- lyrics_liveness0.997_frequency[lyrics_liveness0.997_frequency$lyrics_liveness0.997 != "(" | lyrics_liveness0.997_frequency$lyrics_liveness0.997 != ")"| lyrics_liveness0.997_frequency$lyrics_liveness0.997 != "-"| lyrics_liveness0.997_frequency$lyrics_liveness0.997 != "&"| lyrics_liveness0.997_frequency$lyrics_liveness0.997 != ",", ] 
lyrics_liveness0.997_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_liveness0.997), lyrics_liveness0.997_frequency))


#loudness

lyrics_loudness0.0 <- data.frame(lyrics_list_loudness0.0[[1]][[1]])
for(i in 2:length(lyrics_list_loudness0.0))
{
  lyrics_loudness0.0 <- rbind(lyrics_loudness0.0, lyrics_list_loudness0.0[[i]][[1]])
}
lyrics_loudness0.0 <- data.frame(na.omit(lyrics_loudness0.0$line))
lyrics_loudness0.0 <- c(lyrics_loudness0.0$na.omit.lyrics_loudness0.0.line.)
lyrics_loudness0.0 <- text_to_words(lyrics_loudness0.0)
lyrics_loudness0.0_frequency <- data.frame(table(lyrics_loudness0.0))
lyrics_loudness0.0_frequency <- lyrics_loudness0.0_frequency[lyrics_loudness0.0_frequency$lyrics_loudness0.0 != "(" | lyrics_loudness0.0_frequency$lyrics_loudness0.0 != ")"| lyrics_loudness0.0_frequency$lyrics_loudness0.0 != "-"| lyrics_loudness0.0_frequency$lyrics_loudness0.0 != "&"| lyrics_loudness0.0_frequency$lyrics_loudness0.0 != ",", ] 
lyrics_loudness0.0_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_loudness0.0), lyrics_loudness0.0_frequency))


lyrics_loudness60.0 <- data.frame(lyrics_list_loudness60.0[[1]][[1]])
for(i in 2:length(lyrics_list_loudness60.0))
{
  lyrics_loudness60.0 <- rbind(lyrics_loudness60.0, lyrics_list_loudness60.0[[i]][[1]])
}
lyrics_loudness60.0 <- data.frame(na.omit(lyrics_loudness60.0$line))
lyrics_loudness60.0 <- c(lyrics_loudness60.0$na.omit.lyrics_loudness60.0.line.)
lyrics_loudness60.0 <- text_to_words(lyrics_loudness60.0)
lyrics_loudness60.0_frequency <- data.frame(table(lyrics_loudness60.0))
lyrics_loudness60.0_frequency <- lyrics_loudness60.0_frequency[lyrics_loudness60.0_frequency$lyrics_loudness60.0 != "(" | lyrics_loudness60.0_frequency$lyrics_loudness60.0 != ")"| lyrics_loudness60.0_frequency$lyrics_loudness60.0 != "-"| lyrics_loudness60.0_frequency$lyrics_loudness60.0 != "&"| lyrics_loudness60.0_frequency$lyrics_loudness60.0 != ",", ] 
lyrics_loudness60.0_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_loudness60.0), lyrics_loudness60.0_frequency))

#speechiness

lyrics_speechiness0.0 <- data.frame(lyrics_list_speechiness0.0[[1]][[1]])
for(i in 2:length(lyrics_list_speechiness0.0))
{
  lyrics_speechiness0.0 <- rbind(lyrics_speechiness0.0, lyrics_list_speechiness0.0[[i]][[1]])
}
lyrics_speechiness0.0 <- data.frame(na.omit(lyrics_speechiness0.0$line))
lyrics_speechiness0.0 <- c(lyrics_speechiness0.0$na.omit.lyrics_speechiness0.0.line.)
lyrics_speechiness0.0 <- text_to_words(lyrics_speechiness0.0)
lyrics_speechiness0.0_frequency <- data.frame(table(lyrics_speechiness0.0))
lyrics_speechiness0.0_frequency <- lyrics_speechiness0.0_frequency[lyrics_speechiness0.0_frequency$lyrics_speechiness0.0 != "(" | lyrics_speechiness0.0_frequency$lyrics_speechiness0.0 != ")"| lyrics_speechiness0.0_frequency$lyrics_speechiness0.0 != "-"| lyrics_speechiness0.0_frequency$lyrics_speechiness0.0 != "&"| lyrics_speechiness0.0_frequency$lyrics_speechiness0.0 != ",", ] 
lyrics_speechiness0.0_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_speechiness0.0), lyrics_speechiness0.0_frequency))


lyrics_speechiness0.96 <- data.frame(lyrics_list_speechiness0.96[[1]][[1]])
for(i in 2:length(lyrics_list_speechiness0.96))
{
  lyrics_speechiness0.96 <- rbind(lyrics_speechiness0.96, lyrics_list_speechiness0.96[[i]][[1]])
}
lyrics_speechiness0.96 <- data.frame(na.omit(lyrics_speechiness0.96$line))
lyrics_speechiness0.96 <- c(lyrics_speechiness0.96$na.omit.lyrics_speechiness0.96.line.)
lyrics_speechiness0.96 <- text_to_words(lyrics_speechiness0.96)
lyrics_speechiness0.96_frequency <- data.frame(table(lyrics_speechiness0.96))
lyrics_speechiness0.96_frequency <- lyrics_speechiness0.96_frequency[lyrics_speechiness0.96_frequency$lyrics_speechiness0.96 != "(" | lyrics_speechiness0.96_frequency$lyrics_speechiness0.96 != ")"| lyrics_speechiness0.96_frequency$lyrics_speechiness0.96 != "-"| lyrics_speechiness0.96_frequency$lyrics_speechiness0.96 != "&"| lyrics_speechiness0.96_frequency$lyrics_speechiness0.96 != ",", ] 
lyrics_speechiness0.96_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_speechiness0.96), lyrics_speechiness0.96_frequency))


#tempo

lyrics_tempo0.0 <- data.frame(lyrics_list_tempo0.0[[1]][[1]])
for(i in 2:length(lyrics_list_tempo0.0))
{
  lyrics_tempo0.0 <- rbind(lyrics_tempo0.0, lyrics_list_tempo0.0[[i]][[1]])
}
lyrics_tempo0.0 <- data.frame(na.omit(lyrics_tempo0.0$line))
lyrics_tempo0.0 <- c(lyrics_tempo0.0$na.omit.lyrics_tempo0.0.line.)
lyrics_tempo0.0 <- text_to_words(lyrics_tempo0.0)
lyrics_tempo0.0_frequency <- data.frame(table(lyrics_tempo0.0))
lyrics_tempo0.0_frequency <- lyrics_tempo0.0_frequency[lyrics_tempo0.0_frequency$lyrics_tempo0.0 != "(" | lyrics_tempo0.0_frequency$lyrics_tempo0.0 != ")"| lyrics_tempo0.0_frequency$lyrics_tempo0.0 != "-"| lyrics_tempo0.0_frequency$lyrics_tempo0.0 != "&"| lyrics_tempo0.0_frequency$lyrics_tempo0.0 != ",", ] 
lyrics_tempo0.0_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_tempo0.0), lyrics_tempo0.0_frequency))


lyrics_tempo225.0 <- data.frame(lyrics_list_tempo225.0[[1]][[1]])
for(i in 2:length(lyrics_list_tempo225.0))
{
  lyrics_tempo225.0 <- rbind(lyrics_tempo225.0, lyrics_list_tempo225.0[[i]][[1]])
}
lyrics_tempo225.0 <- data.frame(na.omit(lyrics_tempo225.0$line))
lyrics_tempo225.0 <- c(lyrics_tempo225.0$na.omit.lyrics_tempo225.0.line.)
lyrics_tempo225.0 <- text_to_words(lyrics_tempo225.0)
lyrics_tempo225.0_frequency <- data.frame(table(lyrics_tempo225.0))
lyrics_tempo225.0_frequency <- lyrics_tempo225.0_frequency[lyrics_tempo225.0_frequency$lyrics_tempo225.0 != "(" | lyrics_tempo225.0_frequency$lyrics_tempo225.0 != ")"| lyrics_tempo225.0_frequency$lyrics_tempo225.0 != "-"| lyrics_tempo225.0_frequency$lyrics_tempo225.0 != "&"| lyrics_tempo225.0_frequency$lyrics_tempo225.0 != ",", ] 
lyrics_tempo225.0_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_tempo225.0), lyrics_tempo225.0_frequency))


#valence

lyrics_valence0.0 <- data.frame(lyrics_list_valence0.0[[1]][[1]])
for(i in 2:length(lyrics_list_valence0.0))
{
  lyrics_valence0.0 <- rbind(lyrics_valence0.0, lyrics_list_valence0.0[[i]][[1]])
}
lyrics_valence0.0 <- data.frame(na.omit(lyrics_valence0.0$line))
lyrics_valence0.0 <- c(lyrics_valence0.0$na.omit.lyrics_valence0.0.line.)
lyrics_valence0.0 <- text_to_words(lyrics_valence0.0)
lyrics_valence0.0_frequency <- data.frame(table(lyrics_valence0.0))
lyrics_valence0.0_frequency <- lyrics_valence0.0_frequency[lyrics_valence0.0_frequency$lyrics_valence0.0 != "(" | lyrics_valence0.0_frequency$lyrics_valence0.0 != ")"| lyrics_valence0.0_frequency$lyrics_valence0.0 != "-"| lyrics_valence0.0_frequency$lyrics_valence0.0 != "&"| lyrics_valence0.0_frequency$lyrics_valence0.0 != ",", ] 
lyrics_valence0.0_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_valence0.0), lyrics_valence0.0_frequency))


lyrics_valence0.98 <- data.frame(lyrics_list_valence0.98[[1]][[1]])
for(i in 2:length(lyrics_list_valence0.98))
{
  lyrics_valence0.98 <- rbind(lyrics_valence0.98, lyrics_list_valence0.98[[i]][[1]])
}
lyrics_valence0.98 <- data.frame(na.omit(lyrics_valence0.98$line))
lyrics_valence0.98 <- c(lyrics_valence0.98$na.omit.lyrics_valence0.98.line.)
lyrics_valence0.98 <- text_to_words(lyrics_valence0.98)
lyrics_valence0.98_frequency <- data.frame(table(lyrics_valence0.98))
lyrics_valence0.98_frequency <- lyrics_valence0.98_frequency[lyrics_valence0.98_frequency$lyrics_valence0.98 != "(" | lyrics_valence0.98_frequency$lyrics_valence0.98 != ")"| lyrics_valence0.98_frequency$lyrics_valence0.98 != "-"| lyrics_valence0.98_frequency$lyrics_valence0.98 != "&"| lyrics_valence0.98_frequency$lyrics_valence0.98 != ",", ] 
lyrics_valence0.98_frequency <- data.frame(xtabs(cbind(y = Freq) ~ tolower(lyrics_valence0.98), lyrics_valence0.98_frequency))
