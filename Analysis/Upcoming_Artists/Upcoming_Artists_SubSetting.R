################Analyzing the individual columns from every list in upcoming artists

#danceability
upcoming_artists_danceability <- function(){
  danceability_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,9,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_austria_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_france_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_germany_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_india_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_japan_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_panama_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_spain_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_uk_list[[i]][,c(1,9,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    danceability_upcoming <- rbind(danceability_upcoming, (upcoming_artists_us_list[[i]][,c(1,9,30,36)]))
  }
  danceability_upcoming <- danceability_upcoming %>% arrange(danceability_upcoming)
  return(danceability_upcoming)
}
danceability_upcoming <- upcoming_artists_danceability()

#energy
upcoming_artists_energy <- function(){
  energy_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,10,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_austria_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_france_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_germany_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_india_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_japan_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_panama_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_spain_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_uk_list[[i]][,c(1,10,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    energy_upcoming <- rbind(energy_upcoming, (upcoming_artists_us_list[[i]][,c(1,10,30,36)]))
  }
  energy_upcoming <- energy_upcoming %>% arrange(energy_upcoming)
  return(energy_upcoming)
}
energy_upcoming <- upcoming_artists_energy()

#key
upcoming_artists_key <- function(){
  key_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,11,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_austria_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_france_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_germany_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_india_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_japan_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_panama_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_spain_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_uk_list[[i]][,c(1,11,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    key_upcoming <- rbind(key_upcoming, (upcoming_artists_us_list[[i]][,c(1,11,30,36)]))
  }
  key_upcoming <- key_upcoming %>% arrange(key_upcoming)
  return(key_upcoming)
}
key_upcoming <- upcoming_artists_key()

#loudness
upcoming_artists_loudness <- function(){
  loudness_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,12,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_austria_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_france_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_germany_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_india_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_japan_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_panama_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_spain_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_uk_list[[i]][,c(1,12,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    loudness_upcoming <- rbind(loudness_upcoming, (upcoming_artists_us_list[[i]][,c(1,12,30,36)]))
  }
  loudness_upcoming <- loudness_upcoming %>% arrange(loudness_upcoming)
  return(loudness_upcoming)
}
loudness_upcoming <- upcoming_artists_loudness()

#mode
upcoming_artists_mode <- function(){
  mode_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,13,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_austria_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_france_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_germany_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_india_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_japan_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_panama_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_spain_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_uk_list[[i]][,c(1,13,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    mode_upcoming <- rbind(mode_upcoming, (upcoming_artists_us_list[[i]][,c(1,13,30,36)]))
  }
  mode_upcoming <- mode_upcoming %>% arrange(mode_upcoming)
  return(mode_upcoming)
}
mode_upcoming <- upcoming_artists_mode()

#speechiness
upcoming_artists_speechiness <- function(){
  speechiness_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,14,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_austria_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_france_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_germany_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_india_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_japan_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_panama_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_spain_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_uk_list[[i]][,c(1,14,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    speechiness_upcoming <- rbind(speechiness_upcoming, (upcoming_artists_us_list[[i]][,c(1,14,30,36)]))
  }
  speechiness_upcoming <- speechiness_upcoming %>% arrange(speechiness_upcoming)
  return(speechiness_upcoming)
}
speechiness_upcoming <- upcoming_artists_speechiness()

#acousticness
upcoming_artists_acousticness <- function(){
  acousticness_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,15,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_austria_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_france_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_germany_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_india_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_japan_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_panama_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_spain_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_uk_list[[i]][,c(1,15,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    acousticness_upcoming <- rbind(acousticness_upcoming, (upcoming_artists_us_list[[i]][,c(1,15,30,36)]))
  }
  acousticness_upcoming <- acousticness_upcoming %>% arrange(acousticness_upcoming)
  return(acousticness_upcoming)
}
acousticness_upcoming <- upcoming_artists_acousticness()

#instrumentalness
upcoming_artists_instrumentalness <- function(){
  instrumentalness_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,16,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_austria_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_france_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_germany_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_india_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_japan_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_panama_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_spain_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_uk_list[[i]][,c(1,16,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    instrumentalness_upcoming <- rbind(instrumentalness_upcoming, (upcoming_artists_us_list[[i]][,c(1,16,30,36)]))
  }
  instrumentalness_upcoming <- instrumentalness_upcoming %>% arrange(instrumentalness_upcoming)
  return(instrumentalness_upcoming)
}
instrumentalness_upcoming <- upcoming_artists_instrumentalness()

#liveness
upcoming_artists_liveness <- function(){
  liveness_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,17,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_austria_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_france_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_germany_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_india_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_japan_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_panama_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_spain_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_uk_list[[i]][,c(1,17,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    liveness_upcoming <- rbind(liveness_upcoming, (upcoming_artists_us_list[[i]][,c(1,17,30,36)]))
  }
  liveness_upcoming <- liveness_upcoming %>% arrange(liveness_upcoming)
  return(liveness_upcoming)
}
liveness_upcoming <- upcoming_artists_liveness()

#valence
upcoming_artists_valence <- function(){
  valence_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,18,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_austria_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_france_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_germany_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_india_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_japan_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_panama_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_spain_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_uk_list[[i]][,c(1,18,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    valence_upcoming <- rbind(valence_upcoming, (upcoming_artists_us_list[[i]][,c(1,18,30,36)]))
  }
  valence_upcoming <- valence_upcoming %>% arrange(valence_upcoming)
  return(valence_upcoming)
}
valence_upcoming <- upcoming_artists_valence()

#tempo
upcoming_artists_tempo <- function(){
  tempo_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,19,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_austria_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_france_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_germany_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_india_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_japan_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_panama_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_spain_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_uk_list[[i]][,c(1,19,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    tempo_upcoming <- rbind(tempo_upcoming, (upcoming_artists_us_list[[i]][,c(1,19,30,36)]))
  }
  tempo_upcoming <- tempo_upcoming %>% arrange(tempo_upcoming)
  return(tempo_upcoming)
}
tempo_upcoming <- upcoming_artists_tempo()

#duration
upcoming_artists_duration <- function(){
  duration_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,26,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_austria_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_france_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_germany_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_india_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_japan_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_panama_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_spain_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_uk_list[[i]][,c(1,26,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    duration_upcoming <- rbind(duration_upcoming, (upcoming_artists_us_list[[i]][,c(1,26,30,36)]))
  }
  duration_upcoming <- duration_upcoming %>% arrange(duration_upcoming)
  return(duration_upcoming)
}
duration_upcoming <- upcoming_artists_duration()

#explicit
upcoming_artists_explicit <- function(){
  explicit_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,27,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_austria_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_brazil_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_colombia_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_france_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_germany_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_india_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_japan_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_mexico_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_panama_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_philippines_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_spain_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_uk_list[[i]][,c(1,27,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    explicit_upcoming <- rbind(explicit_upcoming, (upcoming_artists_us_list[[i]][,c(1,27,30,36)]))
  }
  explicit_upcoming <- explicit_upcoming %>% arrange(explicit_upcoming)
  return(explicit_upcoming)
}
explicit_upcoming <- upcoming_artists_explicit()

#keys
upcoming_artists_keys <- function(){
  keys_upcoming <- as.data.frame(upcoming_artists_austria_list[[1]][,c(1,37, 38, 39,30,36)])
  for(i in 2:length(upcoming_artists_austria_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_austria_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_brazil_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_brazil_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_colombia_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_colombia_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_france_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_france_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_germany_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_germany_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_india_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_india_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_indonesia_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_indonesia_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_japan_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_japan_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_mexico_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_mexico_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_netherlands_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_netherlands_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_panama_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_panama_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_philippines_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_philippines_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_southafrica_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_southafrica_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_spain_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_spain_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_uk_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_uk_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  for(i in 1:length(upcoming_artists_us_list))
  {
    keys_upcoming <- rbind(keys_upcoming, (upcoming_artists_us_list[[i]][,c(1, 37, 38, 39,30,36)]))
  }
  keys_upcoming <- keys_upcoming %>% arrange(keys_upcoming)
  return(keys_upcoming)
}
keys_upcoming <- upcoming_artists_keys()
