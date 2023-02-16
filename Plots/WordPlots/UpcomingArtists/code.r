#############
#Loading the necessary libraries
library(wordcloud)
library(RColorBrewer)

#############
#Wordplot in each category

#Reference Website: http://www.sthda.com/english/wiki/text-mining-and-word-cloud-fundamentals-in-r-5-simple-steps-you-should-know

#acousticness

wordcloud(words = lyrics_acousticness_upcoming0.01_frequency$tolower.lyrics_acousticness_upcoming0.01., freq = lyrics_acousticness_upcoming0.01_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


wordcloud(words = lyrics_acousticness_upcoming0.75_frequency$tolower.lyrics_acousticness_upcoming0.75., freq = lyrics_acousticness_upcoming0.75_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#danceability

wordcloud(words = lyrics_danceability_upcoming0.3_frequency$tolower.lyrics_danceability_upcoming0.3., freq = lyrics_danceability_upcoming0.3_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


wordcloud(words = lyrics_danceability_upcoming0.8_frequency$tolower.lyrics_danceability_upcoming0.8., freq = lyrics_danceability_upcoming0.8_frequency$Freq, min.freq = 0,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#duration

wordcloud(words = lyrics_duration_upcoming400000_frequency$tolower.lyrics_duration_upcoming400000., freq = lyrics_duration_upcoming400000_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#energy

wordcloud(words = lyrics_energy_upcoming0.2_frequency$tolower.lyrics_energy_upcoming0.2., freq = lyrics_energy_upcoming0.2_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


wordcloud(words = lyrics_energy_upcoming0.85_frequency$tolower.lyrics_energy_upcoming0.85., freq = lyrics_energy_upcoming0.85_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#explicitness

wordcloud(words = lyrics_explicit_upcomingTRUE_frequency$tolower.lyrics_explicit_upcomingTRUE., freq = lyrics_explicit_upcomingTRUE_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))



#liveness

wordcloud(words = lyrics_liveness_upcoming0.05_frequency$tolower.lyrics_liveness_upcoming0.05., freq = lyrics_liveness_upcoming0.05_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


wordcloud(words = lyrics_liveness_upcoming0.75_frequency$tolower.lyrics_liveness_upcoming0.75., freq = lyrics_liveness_upcoming0.75_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#loudness

wordcloud(words = lyrics_loudness_upcoming_20_frequency$tolower.lyrics_loudness_upcoming_20., freq = lyrics_loudness_upcoming_20_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#speechiness

wordcloud(words = lyrics_speechiness_upcoming0.03_frequency$tolower.lyrics_speechiness_upcoming0.03., freq = lyrics_speechiness_upcoming0.03_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


wordcloud(words = lyrics_speechiness_upcoming0.7_frequency$tolower.lyrics_speechiness_upcoming0.7., freq = lyrics_speechiness_upcoming0.7_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#tempo

wordcloud(words = lyrics_tempo_upcoming185_frequency$tolower.lyrics_tempo_upcoming185., freq = lyrics_tempo_upcoming185_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


#valence

wordcloud(words = lyrics_valence_upcoming0.1_frequency$tolower.lyrics_valence_upcoming0.1., freq = lyrics_valence_upcoming0.1_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))


wordcloud(words = lyrics_valence_upcoming0.85_frequency$tolower.lyrics_valence_upcoming0.85., freq = lyrics_valence_upcoming0.85_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
