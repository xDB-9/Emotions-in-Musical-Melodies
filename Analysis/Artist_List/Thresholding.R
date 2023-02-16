acousticness0.995 <- acousticness[acousticness$acousticness > 0.995,]
acousticness0.01 <- acousticness[acousticness$acousticness == 0,]

danceability0.97 <- danceability[danceability$danceability > 0.97,]
danceability0.01 <- danceability[danceability$danceability == 0.0,]

energy0.99 <- energy[energy$energy > 0.999,]
energy0.00 <- energy[energy$energy < 0.001,]

instrumentalness0.995 <- instrumentalness[instrumentalness$instrumentalness > 0.995,]

liveness0.997 <- liveness[liveness$liveness > 0.997,]
liveness0.0 <- liveness[liveness$liveness == 0.0,]

loudness0.0 <- loudness[loudness$loudness > 0.0,]
loudness60.0 <- loudness[loudness$loudness == -60.0,]

speechiness0.96 <- speechiness[speechiness$speechiness > 0.96,]
speechiness0.0 <- speechiness[speechiness$speechiness == 0.0,]

tempo0.0 <- tempo[tempo$tempo == 0.0,]
tempo225.0 <- tempo[tempo$tempo > 225.0,]

valence0.98 <- valence[valence$valence > 0.98,]
valence0.0 <- valence[valence$valence == 0.0,]

duration2000000 <- duration[duration$duration_ms > 2000000,]
duration5000 <- duration[duration$duration_ms < 5000,]

explicitTRUE <- explicit[explicit[,2] == TRUE,]
