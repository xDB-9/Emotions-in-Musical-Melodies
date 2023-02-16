################ Loading the necessary Libraries

library(rvest)
library(dplyr)
library(spotifyr)
library(plotly)
library(geniusr)
library(tidytext)
library(textdata)
library(ggplot2)
library(extrafont)

################Spotify API tokens

#Sys.setenv(SPOTIFY_CLIENT_ID = 'cf686ca455c74783b8f27d0c35dfc5b0')
#Sys.setenv(SPOTIFY_CLIENT_ID = 'd630401240e2444abe91c957a04472c8')
#Sys.setenv(SPOTIFY_CLIENT_ID = '2ec9815f06a64bf59b9d06432efefe25')
Sys.setenv(SPOTIFY_CLIENT_ID = 'bd276a7518ed4af0b35249fec8380d2c')
#Sys.setenv(SPOTIFY_CLIENT_SECRET = 'c39f2b080de54329ba6619989dab539e')
#Sys.setenv(SPOTIFY_CLIENT_SECRET = '1bda9f2fb2c64eea802904f5c391172c')
#Sys.setenv(SPOTIFY_CLIENT_SECRET = '29d6a5ac738e49a889f45a5d67a8256b')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '62feee5078124502ab7268bc661d57d2')
access_token <- get_spotify_access_token()

################WebScaping Data For Artists
#Call for individual artist data using spotifyr
for(i in 1:nrow(artists))
{
  artists$Artist[i] <- paste("'",artists$Artist[i],"'",sep="")
}

artist_list = list(length = nrow(artists))
for(i in 1:nrow(artists))
{
  if(i == 150 | i == 311 | i == 312 | i == 392 | i == 405 | i == 449 | i == 450 | i == 682)
  {
    next
  }
  artist_list[[i]] <- get_artist_audio_features(artists$Artist[i])
  Sys.sleep(0.5)
  #sleep was introduced to not overload their servers and not to cause our API to fail
}

na.omit(artist_list)
artist_list <- Filter(Negate(is.null), artist_list)

for(i in 1:length(artist_list))
{
  artist_list[[i]][,1] <- paste("'",artist_list[[i]][,1],"'",sep="")
  artist_list[[i]][,30] <- paste("'",artist_list[[i]][,30],"'",sep="")
}

#from artist list to dataframe containing all the data

all_artists_dataframe <- data.frame(artist_list[[1]])
for (i in 2:length(artist_list)) 
{
  all_artists_dataframe <- rbind(all_artists_dataframe, artist_list[[i]])
}

#i=150, 311, 312, 392, 405, 449, 450, 682 produced error sayin no artist found thus eliminating the row

#INDIA
upcoming_artists_india_list = list(length = nrow(upcoming_artists_india))
for(i in 1:nrow(upcoming_artists_india))
{
  upcoming_artists_india_list[[i]] <- get_artist_audio_features(upcoming_artists_india$X2[i])
}

#UNITED STATES OF AMERICA
upcoming_artists_us_list = list(length = nrow(upcoming_artists_us))
for(i in 1:nrow(upcoming_artists_us))
{
  upcoming_artists_us_list[[i]] <- get_artist_audio_features(upcoming_artists_us$X2[i])
}

#UNITED KINGDOM
upcoming_artists_uk_list = list(length = nrow(upcoming_artists_uk))
for(i in 1:nrow(upcoming_artists_uk))
{
  upcoming_artists_uk_list[[i]] <- get_artist_audio_features(upcoming_artists_uk$X2[i])
}

#BRAZIL
upcoming_artists_brazil_list = list(length = nrow(upcoming_artists_brazil))
for(i in 1:nrow(upcoming_artists_brazil))
{
  upcoming_artists_brazil_list[[i]] <- get_artist_audio_features(upcoming_artists_brazil$X2[i])
}

#MEXICO
upcoming_artists_mexico_list = list(length = nrow(upcoming_artists_mexico))
for(i in 1:nrow(upcoming_artists_mexico))
{
  upcoming_artists_mexico_list[[i]] <- get_artist_audio_features(upcoming_artists_mexico$X2[i])
}

#COLOMBIA
upcoming_artists_colombia_list = list(length = nrow(upcoming_artists_colombia))
for(i in 1:nrow(upcoming_artists_colombia))
{
  upcoming_artists_colombia_list[[i]] <- get_artist_audio_features(upcoming_artists_colombia$X2[i])
}

#PANAMA
upcoming_artists_panama_list = list(length = nrow(upcoming_artists_panama))
for(i in 1:nrow(upcoming_artists_panama))
{
  upcoming_artists_panama_list[[i]] <- get_artist_audio_features(upcoming_artists_panama$X2[i])
}

#SPAIN
upcoming_artists_spain_list = list(length = nrow(upcoming_artists_spain))
for(i in 1:nrow(upcoming_artists_spain))
{
  upcoming_artists_spain_list[[i]] <- get_artist_audio_features(upcoming_artists_spain$X2[i])
}

#FRANCE
upcoming_artists_france_list = list(length = nrow(upcoming_artists_france))
for(i in 1:nrow(upcoming_artists_france))
{
  upcoming_artists_france_list[[i]] <- get_artist_audio_features(upcoming_artists_france$X2[i])
}

#SOUTH AFRICA
upcoming_artists_southafrica_list = list(length = nrow(upcoming_artists_southafrica))
for(i in 1:nrow(upcoming_artists_southafrica))
{
  upcoming_artists_southafrica_list[[i]] <- get_artist_audio_features(upcoming_artists_southafrica$X2[i])
}

#INDONESIA
upcoming_artists_indonesia_list = list(length = nrow(upcoming_artists_indonesia))
for(i in 1:nrow(upcoming_artists_indonesia))
{
  upcoming_artists_indonesia_list[[i]] <- get_artist_audio_features(upcoming_artists_indonesia$X2[i])
}

#PHILIPPINES
upcoming_artists_philippines_list = list(length = nrow(upcoming_artists_philippines))
for(i in 1:nrow(upcoming_artists_philippines))
{
  upcoming_artists_philippines_list[[i]] <- get_artist_audio_features(upcoming_artists_philippines$X2[i])
}

#AUSTRIA
upcoming_artists_austria_list = list(length = nrow(upcoming_artists_austria))
for(i in 1:nrow(upcoming_artists_austria))
{
  upcoming_artists_austria_list[[i]] <- get_artist_audio_features(upcoming_artists_austria$X2[i])
}

#GERMANY
upcoming_artists_germany_list = list(length = nrow(upcoming_artists_germany))
for(i in 1:nrow(upcoming_artists_germany))
{
  upcoming_artists_germany_list[[i]] <- get_artist_audio_features(upcoming_artists_germany$X2[i])
}

#NETHERLANDS
upcoming_artists_netherlands_list = list(length = nrow(upcoming_artists_netherlands))
for(i in 1:nrow(upcoming_artists_netherlands))
{
  upcoming_artists_netherlands_list[[i]] <- get_artist_audio_features(upcoming_artists_netherlands$X2[i])
}

#JAPAN
upcoming_artists_japan_list = list(length = nrow(upcoming_artists_japan))
for(i in 1:nrow(upcoming_artists_japan))
{
  upcoming_artists_japan_list[[i]] <- get_artist_audio_features(upcoming_artists_japan$X2[i])
}

#creating a finction to save all the upcoming artist data in a dataframe and then running it

upcoming_artist_dataframe <- function(){
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
upcoming_artist_dataframe <- upcoming_artist_dataframe()
