################Loading the necessary Libraries

library(rvest)
library(dplyr)
library(spotifyr)
library(plotly)
library(geniusr)
library(tidytext)
library(textdata)
library(ggplot2)
library(extrafont)

################Genius API tokens

client <- "pl3JeezsEhR2BX6a19VkztwC9k1yb2bYBxGao9tuuf10qItRIDG1PaYl3f-O_e8G"
client_secret <- "Nd2zfev499qbpCQfBAQAfWj-m8RDCSG-NGGwtbV79jxuPCsboX23YJNjcyaezKHfpRiMnxf-NgIEfaSual32YQ"
access_token_genius <- "uYt322MvKqvgma0zdWAC3j283DYTCgp68anP0v0JiMDDi5DVeWzKnmeFKVHEPP7X"

genius_token()

################Lyrics for upcoming artists

lyrics_list_explicitTRUE = list(length = nrow(explicitTRUE))
counter = 1
for(i in 1:nrow(explicitTRUE))
{
  tryCatch({
    lyrics_list_explicitTRUE[[counter]] <- list(get_lyrics_search(artist_name = explicitTRUE[i,1], song_title = explicitTRUE[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_explicit_upcomingTRUE = list(length = nrow(explicit_upcomingTRUE))
counter = 1
for(i in 1:nrow(explicit_upcomingTRUE))
{
  tryCatch({
    lyrics_list_explicit_upcomingTRUE[[counter]] <- list(get_lyrics_search(artist_name = explicit_upcomingTRUE[i,1], song_title = explicit_upcomingTRUE[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_duration_upcoming400000 = list(length = nrow(duration_upcoming400000))
counter = 1
for(i in 1:nrow(duration_upcoming400000))
{
  tryCatch({
    lyrics_list_duration_upcoming400000[[counter]] <- list(get_lyrics_search(artist_name = duration_upcoming400000[i,1], song_title = duration_upcoming400000[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_valence_upcoming0.1 = list(length = nrow(valence_upcoming0.1))
counter = 1
for(i in 1:nrow(valence_upcoming0.1))
{
  tryCatch({
    lyrics_list_valence_upcoming0.1[[counter]] <- list(get_lyrics_search(artist_name = valence_upcoming0.1[i,1], song_title = valence_upcoming0.1[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_valence_upcoming0.85 = list(length = nrow(valence_upcoming0.85))
counter = 1
for(i in 1:nrow(valence_upcoming0.85))
{
  tryCatch({
    lyrics_list_valence_upcoming0.85[[counter]] <- list(get_lyrics_search(artist_name = valence_upcoming0.85[i,1], song_title = valence_upcoming0.85[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_tempo_upcoming185 = list(length = nrow(tempo_upcoming185))
counter = 1
for(i in 1:nrow(tempo_upcoming185))
{
  tryCatch({
    lyrics_list_tempo_upcoming185[[counter]] <- list(get_lyrics_search(artist_name = tempo_upcoming185[i,1], song_title = tempo_upcoming185[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_speechiness_upcoming0.03 = list(length = nrow(speechiness_upcoming0.03))
counter = 1
for(i in 1:nrow(speechiness_upcoming0.03))
{
  tryCatch({
    lyrics_list_speechiness_upcoming0.03[[counter]] <- list(get_lyrics_search(artist_name = speechiness_upcoming0.03[i,1], song_title = speechiness_upcoming0.03[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_speechiness_upcoming0.7 = list(length = nrow(speechiness_upcoming0.7))
counter = 1
for(i in 1:nrow(speechiness_upcoming0.7))
{
  tryCatch({
    lyrics_list_speechiness_upcoming0.7[[counter]] <- list(get_lyrics_search(artist_name = speechiness_upcoming0.7[i,1], song_title = speechiness_upcoming0.7[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_loudness_upcoming_20 = list(length = nrow(loudness_upcoming_20))
counter = 1
for(i in 1:nrow(loudness_upcoming_20))
{
  tryCatch({
    lyrics_list_loudness_upcoming_20[[counter]] <- list(get_lyrics_search(artist_name = loudness_upcoming_20[i,1], song_title = loudness_upcoming_20[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_liveness_upcoming0.05 = list(length = nrow(liveness_upcoming0.05))
counter = 1
for(i in 1:nrow(liveness_upcoming0.05))
{
  tryCatch({
    lyrics_list_liveness_upcoming0.05[[counter]] <- list(get_lyrics_search(artist_name = liveness_upcoming0.05[i,1], song_title = liveness_upcoming0.05[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_liveness_upcoming0.75 = list(length = nrow(liveness_upcoming0.75))
counter = 1
for(i in 1:nrow(liveness_upcoming0.75))
{
  tryCatch({
    lyrics_list_liveness_upcoming0.75[[counter]] <- list(get_lyrics_search(artist_name = liveness_upcoming0.75[i,1], song_title = liveness_upcoming0.75[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_instrumentalness_upcoming0.85 = list(length = nrow(instrumentalness_upcoming0.85))
counter = 1
for(i in 1:nrow(instrumentalness_upcoming0.85))
{
  tryCatch({
    lyrics_list_instrumentalness_upcoming0.85[[counter]] <- list(get_lyrics_search(artist_name = instrumentalness_upcoming0.85[i,1], song_title = instrumentalness_upcoming0.85[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_energy_upcoming0.2 = list(length = nrow(energy_upcoming0.2))
counter = 1
for(i in 1:nrow(energy_upcoming0.2))
{
  tryCatch({
    lyrics_list_energy_upcoming0.2[[counter]] <- list(get_lyrics_search(artist_name = energy_upcoming0.2[i,1], song_title = energy_upcoming0.2[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_energy_upcoming0.85 = list(length = nrow(energy_upcoming0.85))
counter = 1
for(i in 1:nrow(energy_upcoming0.85))
{
  tryCatch({
    lyrics_list_energy_upcoming0.85[[counter]] <- list(get_lyrics_search(artist_name = energy_upcoming0.85[i,1], song_title = energy_upcoming0.85[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_danceability_upcoming0.3 = list(length = nrow(danceability_upcoming0.3))
counter = 1
for(i in 1:nrow(danceability_upcoming0.3))
{
  tryCatch({
    lyrics_list_danceability_upcoming0.3[[counter]] <- list(get_lyrics_search(artist_name = danceability_upcoming0.3[i,1], song_title = danceability_upcoming0.3[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_danceability_upcoming0.8 = list(length = nrow(danceability_upcoming0.8))
counter = 1
for(i in 1:nrow(danceability_upcoming0.8))
{
  tryCatch({
    lyrics_list_danceability_upcoming0.8[[counter]] <- list(get_lyrics_search(artist_name = danceability_upcoming0.8[i,1], song_title = danceability_upcoming0.8[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_acousticness_upcoming0.01 = list(length = nrow(acousticness_upcoming0.01))
counter = 1
for(i in 1:nrow(acousticness_upcoming0.01))
{
  tryCatch({
    lyrics_list_acousticness_upcoming0.01[[counter]] <- list(get_lyrics_search(artist_name = acousticness_upcoming0.01[i,1], song_title = acousticness_upcoming0.01[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_acousticness_upcoming0.75 = list(length = nrow(acousticness_upcoming0.75))
counter = 1
for(i in 1:nrow(acousticness_upcoming0.75))
{
  tryCatch({
    lyrics_list_acousticness_upcoming0.75[[counter]] <- list(get_lyrics_search(artist_name = acousticness_upcoming0.75[i,1], song_title = acousticness_upcoming0.75[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

################Lyrics for artistlist

lyrics_list_explicitTRUE = list(length = nrow(explicitTRUE))
counter = 1
for(i in 1:nrow(explicitTRUE))
{
  tryCatch({
    lyrics_list_explicitTRUE[[counter]] <- list(get_lyrics_search(artist_name = explicitTRUE[i,1], song_title = explicitTRUE[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_valence0.0 = list(length = nrow(valence0.0))
counter = 1
for(i in 1:nrow(valence0.0))
{
  tryCatch({
    lyrics_list_valence0.0[[counter]] <- list(get_lyrics_search(artist_name = valence0.0[i,1], song_title = valence0.0[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_tempo0.0 = list(length = nrow(tempo0.0))
counter = 1
for(i in 1:nrow(tempo0.0))
{
  tryCatch({
    lyrics_list_tempo0.0[[counter]] <- list(get_lyrics_search(artist_name = tempo0.0[i,1], song_title = tempo0.0[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_speechiness0.0 = list(length = nrow(speechiness0.0))
counter = 1
for(i in 1:nrow(speechiness0.0))
{
  tryCatch({
    lyrics_list_speechiness0.0[[counter]] <- list(get_lyrics_search(artist_name = speechiness0.0[i,1], song_title = speechiness0.0[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_danceability0.01 = list(length = nrow(danceability0.01))
counter = 1
for(i in 1:nrow(danceability0.01))
{
  tryCatch({
    lyrics_list_danceability0.01[[counter]] <- list(get_lyrics_search(artist_name = danceability0.01[i,1], song_title = danceability0.01[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_duration2000000 = list(length = nrow(duration2000000))
counter = 1
for(i in 1:nrow(duration2000000))
{
  tryCatch({
    lyrics_list_duration2000000[[counter]] <- list(get_lyrics_search(artist_name = duration2000000[i,1], song_title = duration2000000[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_liveness0.0 = list(length = nrow(liveness0.0))
counter = 1
for(i in 1:nrow(liveness0.0))
{
  tryCatch({
    lyrics_list_liveness0.0[[counter]] <- list(get_lyrics_search(artist_name = liveness0.0[i,1], song_title = liveness0.0[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_energy0.00 = list(length = nrow(energy0.00))
counter = 1
for(i in 1:nrow(energy0.00))
{
  tryCatch({
    lyrics_list_energy0.00[[counter]] <- list(get_lyrics_search(artist_name = energy0.00[i,1], song_title = energy0.00[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_acousticness0.995 = list(length = nrow(acousticness0.995))
counter = 1
for(i in 1:nrow(acousticness0.995))
{
  tryCatch({
    lyrics_list_acousticness0.995[[counter]] <- list(get_lyrics_search(artist_name = acousticness0.995[i,1], song_title = acousticness0.995[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_acousticness0.01 = list(length = nrow(acousticness0.01))
counter = 1
for(i in 1:nrow(acousticness0.01))
{
  tryCatch({
    lyrics_list_acousticness0.01[[counter]] <- list(get_lyrics_search(artist_name = acousticness0.01[i,1], song_title = acousticness0.01[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_loudness0.0 = list(length = nrow(loudness0.0))
counter = 1
for(i in 1:nrow(loudness0.0))
{
  tryCatch({
    lyrics_list_loudness0.0[[counter]] <- list(get_lyrics_search(artist_name = loudness0.0[i,1], song_title = loudness0.0[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_loudness60.0 = list(length = nrow(loudness60.0))
counter = 1
for(i in 1:nrow(loudness60.0))
{
  tryCatch({
    lyrics_list_loudness60.0[[counter]] <- list(get_lyrics_search(artist_name = loudness60.0[i,1], song_title = loudness60.0[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_tempo225.0 = list(length = nrow(tempo225.0))
counter = 1
for(i in 1:nrow(tempo225.0))
{
  tryCatch({
    lyrics_list_tempo225.0[[counter]] <- list(get_lyrics_search(artist_name = tempo225.0[i,1], song_title = tempo225.0[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_duration5000 = list(length = nrow(duration5000))
counter = 1
for(i in 1:nrow(duration5000))
{
  tryCatch({
    lyrics_list_duration5000[[counter]] <- list(get_lyrics_search(artist_name = duration5000[i,1], song_title = duration5000[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_instrumentalness0.995 = list(length = nrow(instrumentalness0.995))
counter = 1
for(i in 1:nrow(instrumentalness0.995))
{
  tryCatch({
    lyrics_list_instrumentalness0.995[[counter]] <- list(get_lyrics_search(artist_name = instrumentalness0.995[i,1], song_title = instrumentalness0.995[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_valence0.98 = list(length = nrow(valence0.98))
counter = 1
for(i in 1:nrow(valence0.98))
{
  tryCatch({
    lyrics_list_valence0.98[[counter]] <- list(get_lyrics_search(artist_name = valence0.98[i,1], song_title = valence0.98[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_speechiness0.96 = list(length = nrow(speechiness0.96))
counter = 1
for(i in 1:nrow(speechiness0.96))
{
  tryCatch({
    lyrics_list_speechiness0.96[[counter]] <- list(get_lyrics_search(artist_name = speechiness0.96[i,1], song_title = speechiness0.96[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_liveness0.997 = list(length = nrow(liveness0.997))
counter = 1
for(i in 1:nrow(liveness0.997))
{
  tryCatch({
    lyrics_list_liveness0.997[[counter]] <- list(get_lyrics_search(artist_name = liveness0.997[i,1], song_title = liveness0.997[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_danceability0.97 = list(length = nrow(danceability0.97))
counter = 1
for(i in 1:nrow(danceability0.97))
{
  tryCatch({
    lyrics_list_danceability0.97[[counter]] <- list(get_lyrics_search(artist_name = danceability0.97[i,1], song_title = danceability0.97[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

lyrics_list_danceability0.97 = list(length = nrow(danceability0.97))
counter = 1
for(i in 1:nrow(danceability0.97))
{
  tryCatch({
    lyrics_list_danceability0.97[[counter]] <- list(get_lyrics_search(artist_name = danceability0.97[i,1], song_title = danceability0.97[i,3]))
    counter = counter + 1
  }, error = function(e) {conditionMessage(e)}
  )
  Sys.sleep(1)
}

#lyrics_list_energy0.99 = list(length = nrow(energy0.99))
#counter = 1
#for(i in 1:nrow(energy0.99))
#{
#  tryCatch({
#    lyrics_list_energy0.99[[counter]] <- list(get_lyrics_search(artist_name = energy0.99[i,1], song_title = energy0.99[i,3]))
#    counter = counter + 1
#  }, error = function(e) {conditionMessage(e)}
#  )
#  Sys.sleep(1)
#}

#none of the songs in the list had lyrics listed on the website thus decided to not run the code.
