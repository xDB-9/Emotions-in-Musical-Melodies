#############
#Loading the necessary libraries
library(wordcloud)
library(RColorBrewer)

#############
#Wordplot in each category

#############
#Reference: http://www.sthda.com/english/wiki/text-mining-and-word-cloud-fundamentals-in-r-5-simple-steps-you-should-know

#acousticness

wordcloud(words = lyrics_acousticness0.01_frequency$tolower.lyrics_acousticness0.01., freq = lyrics_acousticness0.01_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
          
 wordcloud(words = lyrics_acousticness0.995_frequency$tolower.lyrics_acousticness0.995., freq = lyrics_acousticness0.995_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
          

#danceability

wordcloud(words = lyrics_danceability0.01_frequency$tolower.lyrics_danceability0.01., freq = lyrics_danceability0.01_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
          

wordcloud(words = lyrics_danceability0.97_frequency$tolower.lyrics_danceability0.97., freq = lyrics_danceability0.01_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
          

#duration

wordcloud(words = lyrics_duration2000000_frequency$tolower.lyrics_duration2000000., freq = lyrics_duration2000000_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
          

wordcloud(words = lyrics_duration5000_frequency$tolower.lyrics_duration5000., freq = lyrics_duration5000_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#energy

wordcloud(words = lyrics_energy0.00_frequency$tolower.lyrics_energy0.00., freq = lyrics_energy0.00_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#explicitness

wordcloud(words = lyrics_explicitTRUE_frequency$tolower.lyrics_explicitTRUE., freq = lyrics_explicitTRUE_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#instrumentalness

wordcloud(words = lyrics_instrumentalness0.995_frequency$tolower.lyrics_instrumentalness0.995., freq = lyrics_instrumentalness0.995_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#liveness

wordcloud(words = lyrics_liveness0.0_frequency$tolower.lyrics_liveness0.0., freq = lyrics_liveness0.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


wordcloud(words = lyrics_liveness0.997_frequency$tolower.lyrics_liveness0.997., freq = lyrics_liveness0.997_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#loudness

wordcloud(words = lyrics_loudness0.0_frequency$tolower.lyrics_loudness0.0., freq = lyrics_loudness0.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


wordcloud(words = lyrics_loudness60.0_frequency$tolower.lyrics_loudness60.0., freq = lyrics_loudness60.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#speechiness

wordcloud(words = lyrics_speechiness0.0_frequency$tolower.lyrics_speechiness0.0., freq = lyrics_speechiness0.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


wordcloud(words = lyrics_speechiness0.96_frequency$tolower.lyrics_speechiness0.96., freq = lyrics_speechiness0.96_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#tempo

wordcloud(words = lyrics_tempo0.0_frequency$tolower.lyrics_tempo0.0., freq = lyrics_tempo0.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


wordcloud(words = lyrics_tempo225.0_frequency$tolower.lyrics_tempo225.0., freq = lyrics_duration2000000_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#valence

wordcloud(words = lyrics_valence0.0_frequency$tolower.lyrics_valence0.0., freq = lyrics_valence0.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


wordcloud(words = lyrics_valence0.98_frequency$tolower.lyrics_valence0.98., freq = lyrics_valence0.98_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
