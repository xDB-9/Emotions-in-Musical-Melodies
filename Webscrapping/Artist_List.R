#################WebScaping Data For Artists

#Gives a list of artists across spotify
A_Z_list <- "https://www.udiscovermusic.com/artists-a-z/"
A_Z_list <- read_html(A_Z_list)
A_Z_list <- html_elements(A_Z_list, ".artist-page-link")
A_Z_list <- html_text(A_Z_list)
A_Z_list <- data.frame(A_Z_list)
colnames(A_Z_list) <- "Artist"

#Gives a list of most streamed artists across spotify
chartmasters <- "https://chartmasters.org/most-streamed-artists-ever-on-spotify/"
chartmasters <- read_html(chartmasters)
chartmasters <- html_table(chartmasters)
chartmasters <- chartmasters[[1]][,2]

#Gives a list of most followed artists across spotify
chartmasters2 <- "https://chartmasters.org/spotify-most-followed-artists/"
chartmasters2 <- read_html(chartmasters2)
chartmasters2 <- html_table(chartmasters2)
chartmasters2 <- chartmasters2[[1]][,3]

#Gives a list of most streamed artists across spotify in different zones of the world
newsroom_spotify <- "https://newsroom.spotify.com/2021-12-01/what-the-world-streamed-most-in-2021/"
newsroom_spotify <- read_html(newsroom_spotify)
newsroom_spotify <- html_elements(newsroom_spotify, ".cell ol span")
newsroom_spotify <- html_text(newsroom_spotify)
most_streamed_global <- newsroom_spotify[1:5]
most_streamed_global <- data.frame(most_streamed_global)
most_streamed_US <- newsroom_spotify[6:10]
most_streamed_US <- data.frame(most_streamed_US)

#Merge the artist names for making the list more exhaustive
artists <- merge(chartmasters, chartmasters2, by="Artist", all = TRUE)
artists <- merge(artists, A_Z_list, by="Artist", all = TRUE)
