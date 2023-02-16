################WebScaping Data For Artists

#Spotify's list of new artists to look out for
upcoming_artists <- "https://newsroom.spotify.com/2020-03-09/36-new-artists-around-the-world-that-are-on-spotifys-radar/"
upcoming_artists <- read_html(upcoming_artists)
upcoming_artists <- upcoming_artists %>%
  html_elements("tbody") %>%
  html_table() %>%
  `[[`(1) %>%
  tidyr::separate_rows(X2, sep = "\n")
#upcoming_artists <- upcoming_artists <- list(structure(list(X1 = c("United States", "United Kingdom", "Brazil", "Mexico", "Argentina", "Colombia", "Panama", "Spain", "Spain","Spain","Spain","Spain","Australia", "France", "France", "France", "France", "UAE & Lebanon", "South Africa", "Philippines", "Philippines", "Indonesia","Indonesia", "Taiwan", "Austria", "Austria", "Germany", "Netherlands","Netherlands", "Japan","Japan","Japan", "India","India","India"), X2 = c("Alaina Castillo", "Young T + Bugsey", "Agnes Nunes", "Silvana Estrada", "Romeo El Santo", "Ela Minus", "Boza", "DORA","Aleesha" , "María José Llergo", "Guitarricadelafuente", "Paranoid 1966","merci, mercy", "Lous and the Yakuza","Yuzmv","Philippine","Hervé" ,"Hollaphonic x Xriss", "Elaine", "SB19", "August Wahh","Mahen","Monica Karina", "張若凡RuoFan", "AVEC","My Ugly Clementine", "badmómzjay", "RIMON","Jeangu Macrooy", "Fujii Kaze","Vaundy","Rina Sawayama", "Mali","When Chai Met Toast","Taba Chake")), row.names = c(NA, -35L), class = c("tbl_df", "tbl", "data.frame")))

upcoming_artists_india = upcoming_artists[33:35,]
upcoming_artists_india <- upcoming_artists_india[-1,]
for(i in 1:nrow(upcoming_artists_india))
{
  upcoming_artists_india$X2[i] <- paste("'",upcoming_artists_india$X2[i],"'",sep="")
}


upcoming_artists_us = upcoming_artists[1,]
for(i in 1:nrow(upcoming_artists_us))
{
  upcoming_artists_us$X2[i] <- paste("'",upcoming_artists_us$X2[i],"'",sep="")
}


upcoming_artists_uk = upcoming_artists[2,]
for(i in 1:nrow(upcoming_artists_uk))
{
  upcoming_artists_uk$X2[i] <- paste("'",upcoming_artists_uk$X2[i],"'",sep="")
}


upcoming_artists_brazil = upcoming_artists[3,]
for(i in 1:nrow(upcoming_artists_brazil))
{
  upcoming_artists_brazil$X2[i] <- paste("'",upcoming_artists_brazil$X2[i],"'",sep="")
}


upcoming_artists_mexico = upcoming_artists[4,]
for(i in 1:nrow(upcoming_artists_mexico))
{
  upcoming_artists_mexico$X2[i] <- paste("'",upcoming_artists_mexico$X2[i],"'",sep="")
}


#upcoming_artists_argentina = upcoming_artists[5,]
#upcoming_artists_argentina <- upcoming_artists_argentina[-1,]
#upcoming_artists_argentina_list = list(length = nrow(upcoming_artists_argentina))
#for(i in 1:nrow(upcoming_artists_argentina))
#{
#  upcoming_artists_argentina$X2[i] <- paste("'",upcoming_artists_argentina$X2[i],"'",sep="")
#}
#for(i in 1:nrow(upcoming_artists_argentina))
#{
#  upcoming_artists_argentina_list[[i]] <- get_artist_audio_features(upcoming_artists_argentina$X2[i])
#}

upcoming_artists_colombia = upcoming_artists[6,]
for(i in 1:nrow(upcoming_artists_colombia))
{
  upcoming_artists_colombia$X2[i] <- paste("'",upcoming_artists_colombia$X2[i],"'",sep="")
}


upcoming_artists_panama = upcoming_artists[7,]
for(i in 1:nrow(upcoming_artists_panama))
{
  upcoming_artists_panama$X2[i] <- paste("'",upcoming_artists_panama$X2[i],"'",sep="")
}


upcoming_artists_spain = upcoming_artists[8:12,]
upcoming_artists_spain <- upcoming_artists_spain[-5,]
for(i in 1:nrow(upcoming_artists_spain))
{
  upcoming_artists_spain$X2[i] <- paste("'",upcoming_artists_spain$X2[i],"'",sep="")
}


#upcoming_artists_australia = upcoming_artists[13,]
#upcoming_artists_australia <- upcoming_artists_australia[-1,]
#upcoming_artists_australia_list = list(length = nrow(upcoming_artists_australia))
#for(i in 1:nrow(upcoming_artists_australia))
#{
#  upcoming_artists_australia$X2[i] <- paste("'",upcoming_artists_australia$X2[i],"'",sep="")
#}
#for(i in 1:nrow(upcoming_artists_australia))
#{
#  upcoming_artists_australia_list[[i]] <- get_artist_audio_features(upcoming_artists_australia$X2[i])
#}

upcoming_artists_france = upcoming_artists[14:17,]
upcoming_artists_france <- upcoming_artists_france[-c(3,4),]
for(i in 1:nrow(upcoming_artists_france))
{
  upcoming_artists_france$X2[i] <- paste("'",upcoming_artists_france$X2[i],"'",sep="")
}


#upcoming_artists_uae = upcoming_artists[18,]
#upcoming_artists_uae <- upcoming_artists_uae[-1,]
#upcoming_artists_uae_list = list(length = nrow(upcoming_artists_uae))
#for(i in 1:nrow(upcoming_artists_uae))
#{
#  upcoming_artists_uae$X2[i] <- paste("'",upcoming_artists_uae$X2[i],"'",sep="")
#}
#for(i in 1:nrow(upcoming_artists_uae))
#{
#  upcoming_artists_uae_list[[i]] <- get_artist_audio_features(upcoming_artists_uae$X2[i])
#}

upcoming_artists_southafrica = upcoming_artists[19,]
for(i in 1:nrow(upcoming_artists_southafrica))
{
  upcoming_artists_southafrica$X2[i] <- paste("'",upcoming_artists_southafrica$X2[i],"'",sep="")
}


upcoming_artists_philippines = upcoming_artists[20:21,]
upcoming_artists_philippines <- upcoming_artists_philippines[-2,]
for(i in 1:nrow(upcoming_artists_philippines))
{
  upcoming_artists_philippines$X2[i] <- paste("'",upcoming_artists_philippines$X2[i],"'",sep="")
}


upcoming_artists_indonesia = upcoming_artists[22:23,]
upcoming_artists_indonesia <- upcoming_artists_indonesia[-2,]
for(i in 1:nrow(upcoming_artists_indonesia))
{
  upcoming_artists_indonesia$X2[i] <- paste("'",upcoming_artists_indonesia$X2[i],"'",sep="")
}


#upcoming_artists_taiwan = upcoming_artists[24,]
#upcoming_artists_taiwan_list = list(length = nrow(upcoming_artists_taiwan))
#for(i in 1:nrow(upcoming_artists_taiwan))
#{
#  upcoming_artists_taiwan$X2[i] <- paste("'",upcoming_artists_taiwan$X2[i],"'",sep="")
#}
#for(i in 1:nrow(upcoming_artists_taiwan))
#{
#  upcoming_artists_taiwan_list[[i]] <- get_artist_audio_features(upcoming_artists_taiwan$X2[i])
#}

upcoming_artists_austria = upcoming_artists[25:26,]
for(i in 1:nrow(upcoming_artists_austria))
{
  upcoming_artists_austria$X2[i] <- paste("'",upcoming_artists_austria$X2[i],"'",sep="")
}


upcoming_artists_germany = upcoming_artists[27,]
for(i in 1:nrow(upcoming_artists_germany))
{
  upcoming_artists_germany$X2[i] <- paste("'",upcoming_artists_germany$X2[i],"'",sep="")
}


upcoming_artists_netherlands = upcoming_artists[28:29,]
upcoming_artists_netherlands <- upcoming_artists_netherlands[-1,]
for(i in 1:nrow(upcoming_artists_netherlands))
{
  upcoming_artists_netherlands$X2[i] <- paste("'",upcoming_artists_netherlands$X2[i],"'",sep="")
}


upcoming_artists_japan = upcoming_artists[30:32,]
for(i in 1:nrow(upcoming_artists_japan))
{
  upcoming_artists_japan$X2[i] <- paste("'",upcoming_artists_japan$X2[i],"'",sep="")
}


upcoming_artists_test <- upcoming_artists[-c(33, 5, 12, 13, 16, 17, 18, 21, 23, 24, 28),]
#INDIA -> 5J1JcdYCPj44YKz6kVA5wx
#ARGENTINA -> 7b2GRLYNoKPanoqh7lzsbT
#SPAIN -> 6GP540ZTiOPTz8uI76k43u
#AUSTRALIA -> 524oC8NzSWvqPbwiRkYSLH
#FRANCE -> 0jm6JzrAGaSgKY02PI2k4E; 31JFnMfmvwzZGdEnXaKGek
#UAE -> 3vxW6vSOonNDvW91Fo2Z8f
#PHILIPPINES -> 4NsvRUCOVV4KrWRfF65Rcj
#INDONESIA -> 4uz19Fx4VF6BHhzmTuSCOR
#TAIWAN -> contains chinese letters
#NETHERLANDS -> 4DtUsfaVQBhypuwYmobdSm
