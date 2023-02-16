################Thresholds

acousticness_upcoming0.75 <- acousticness_upcoming[acousticness_upcoming$acousticness > 0.75,]
acousticness_upcoming0.01 <- acousticness_upcoming[acousticness_upcoming$acousticness < 0.01,]

danceability_upcoming0.8 <- danceability_upcoming[danceability_upcoming$danceability > 0.8,]
danceability_upcoming0.3 <- danceability_upcoming[danceability_upcoming$danceability < 0.3,]

energy_upcoming0.85 <- energy_upcoming[energy_upcoming$energy > 0.85,]
energy_upcoming0.2 <- energy_upcoming[energy_upcoming$energy < 0.2,]

instrumentalness_upcoming0.85 <- instrumentalness_upcoming[instrumentalness_upcoming$instrumentalness > 0.85,]

liveness_upcoming0.75 <- liveness_upcoming[liveness_upcoming$liveness > 0.75,]
liveness_upcoming0.05 <- liveness_upcoming[liveness_upcoming$liveness < 0.05,]

loudness_upcoming_20 <- loudness_upcoming[loudness_upcoming$loudness < -20.0,]

speechiness_upcoming0.7 <- speechiness_upcoming[speechiness_upcoming$speechiness > 0.7,]
speechiness_upcoming0.03 <- speechiness_upcoming[speechiness_upcoming$speechiness < 0.03,]

tempo_upcoming185 <- tempo_upcoming[tempo_upcoming$tempo > 185.0,]

valence_upcoming0.85 <- valence_upcoming[valence_upcoming$valence > 0.850,]
valence_upcoming0.1 <- valence_upcoming[valence_upcoming$valence < 0.1,]

duration_upcoming400000 <- duration_upcoming[duration_upcoming$duration_ms > 400000,]

explicit_upcomingTRUE <- explicit_upcoming[explicit_upcoming[,2] == TRUE,]
