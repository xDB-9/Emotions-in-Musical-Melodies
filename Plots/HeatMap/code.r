library(ggplot2)
library(viridis)

ggplot(melted_lyrics_songs_emotions, aes(X15, variable, fill= value)) + 
      geom_tile() +
      scale_fill_viridis(discrete = TRUE)
