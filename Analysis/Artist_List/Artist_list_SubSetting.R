################Analyzing the individual columns from every list in artist_list

#danceability
danceability <- as.data.frame(artist_list[[1]][,c(1,9,30,36)])
for(i in 2:length(artist_list))
{
  danceability <- rbind(danceability, (artist_list[[i]][,c(1,9,30,36)]))
}
danceability <- danceability %>% arrange(danceability)

#energy
energy <- as.data.frame(artist_list[[1]][,c(1,10,30,36)])
for(i in 2:length(artist_list))
{
  energy <- rbind(energy, (artist_list[[i]][,c(1,10,30,36)]))
}
energy <- energy %>% arrange(energy)

#key
key <- as.data.frame(artist_list[[1]][,c(1,11,30,36)])
for(i in 2:length(artist_list))
{
  key <- rbind(key, (artist_list[[i]][,c(1,11,30,36)]))
}
key <- key %>% arrange(key)

#loudness
loudness <- as.data.frame(artist_list[[1]][,c(1,12,30,36)])
for(i in 2:length(artist_list))
{
  loudness <- rbind(loudness, (artist_list[[i]][,c(1,12,30,36)]))
}
loudness <- loudness %>% arrange(loudness)

#mode
mode <- as.data.frame(artist_list[[1]][,c(1,13,30,36)])
for(i in 2:length(artist_list))
{
  mode <- rbind(mode, (artist_list[[i]][,c(1,13,30,36)]))
}
mode <- mode %>% arrange(mode)

#speechiness
speechiness <- as.data.frame(artist_list[[1]][,c(1,14,30,36)])
for(i in 2:length(artist_list))
{
  speechiness <- rbind(speechiness, (artist_list[[i]][,c(1,14,30,36)]))
}
speechiness <- speechiness %>% arrange(speechiness)

#acousticness
acousticness <- as.data.frame(artist_list[[1]][,c(1,15,30,36)])
for(i in 2:length(artist_list))
{
  acousticness <- rbind(acousticness, (artist_list[[i]][,c(1,15,30,36)]))
}
acousticness <- acousticness %>% arrange(acousticness)

#instrumentalness
instrumentalness <- as.data.frame(artist_list[[1]][,c(1,16,30,36)])
for(i in 2:length(artist_list))
{
  instrumentalness <- rbind(instrumentalness, (artist_list[[i]][,c(1,16,30,36)]))
}
instrumentalness <- instrumentalness %>% arrange(instrumentalness)

#liveness
liveness <- as.data.frame(artist_list[[1]][,c(1,17,30,36)])
for(i in 2:length(artist_list))
{
  liveness <- rbind(liveness, (artist_list[[i]][,c(1,17,30,36)]))
}
liveness <- liveness %>% arrange(liveness)

#valence
valence <- as.data.frame(artist_list[[1]][,c(1,18,30,36)])
for(i in 2:length(artist_list))
{
  valence <- rbind(valence, (artist_list[[i]][,c(1,18,30,36)]))
}
valence <- valence %>% arrange(valence)

#tempo
tempo <- as.data.frame(artist_list[[1]][,c(1,19,30,36)])
for(i in 2:length(artist_list))
{
  tempo <- rbind(tempo, (artist_list[[i]][,c(1,19,30,36)]))
}
tempo <- tempo %>% arrange(tempo)

#duration
duration <- as.data.frame(artist_list[[1]][,c(1,26,30,36)])
for(i in 2:length(artist_list))
{
  duration <- rbind(duration, (artist_list[[i]][,c(1,26,30,36)]))
}
duration <- duration %>% arrange(duration_ms)

#explicit
explicit <- as.data.frame(artist_list[[1]][,c(1,27,30,36)])
for(i in 2:length(artist_list))
{
  explicit <- rbind(explicit, (artist_list[[i]][,c(1,27,30,36)]))
}
explicit <- explicit %>% arrange(explicit)

#keys
keys <- as.data.frame(artist_list[[1]][,c(1,37,38,39,30,36)])
for(i in 2:length(artist_list))
{
  keys <- rbind(keys, (artist_list[[i]][,c(1,37,38,39,30,36)]))
}
keys <- keys %>% arrange(key_mode)
