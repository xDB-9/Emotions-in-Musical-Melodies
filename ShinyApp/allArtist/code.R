#############
#Loading the necessary libraries
library(wordcloud)
library(RColorBrewer)

#############
#Wordplot in each category

#############
#Reference: http://www.sthda.com/english/wiki/text-mining-and-word-cloud-fundamentals-in-r-5-simple-steps-you-should-know

#acousticness
y <- list()
lyrics_acousticness0.01_frequency <-wordcloud(words = lyrics_acousticness0.01_frequency$tolower.lyrics_acousticness0.01., freq = lyrics_acousticness0.01_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[1]] <- lyrics_acousticness0.01_frequency
lyrics_acousticness0.995_frequency <- wordcloud(words = lyrics_acousticness0.995_frequency$tolower.lyrics_acousticness0.995., freq = lyrics_acousticness0.995_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[2]] <- lyrics_acousticness0.995_frequency

#danceability

lyrics_danceability0.01_frequency <- wordcloud(words = lyrics_danceability0.01_frequency$tolower.lyrics_danceability0.01., freq = lyrics_danceability0.01_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[3]] <- lyrics_danceability0.01_frequency

lyrics_danceability0.97_frequency  <- wordcloud(words = lyrics_danceability0.97_frequency$tolower.lyrics_danceability0.97., freq = lyrics_danceability0.01_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[4]] <- lyrics_danceability0.97_frequency 

#duration

lyrics_duration2000000_frequency <- wordcloud(words = lyrics_duration2000000_frequency$tolower.lyrics_duration2000000., freq = lyrics_duration2000000_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[5]] <- lyrics_duration2000000_frequency

lyrics_duration5000_frequency <- wordcloud(words = lyrics_duration5000_frequency$tolower.lyrics_duration5000., freq = lyrics_duration5000_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[6]] <- lyrics_duration5000_frequency 

#energy

lyrics_energy0.00_frequency <- wordcloud(words = lyrics_energy0.00_frequency$tolower.lyrics_energy0.00., freq = lyrics_energy0.00_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[7]] <- lyrics_energy0.00_frequency

#explicitness

lyrics_explicitTRUE_frequency <- wordcloud(words = lyrics_explicitTRUE_frequency$tolower.lyrics_explicitTRUE., freq = lyrics_explicitTRUE_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[8]] <- lyrics_explicitTRUE_frequency 

#instrumentalness

lyrics_instrumentalness0.995_frequency <- wordcloud(words = lyrics_instrumentalness0.995_frequency$tolower.lyrics_instrumentalness0.995., freq = lyrics_instrumentalness0.995_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[9]] <- lyrics_instrumentalness0.995_frequency

#liveness

lyrics_liveness0.0_frequency <- wordcloud(words = lyrics_liveness0.0_frequency$tolower.lyrics_liveness0.0., freq = lyrics_liveness0.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[10]] <- lyrics_liveness0.0_frequency

lyrics_liveness0.997_frequency  <- wordcloud(words = lyrics_liveness0.997_frequency$tolower.lyrics_liveness0.997., freq = lyrics_liveness0.997_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[11]] <- lyrics_liveness0.997_frequency 

#loudness

lyrics_loudness0.0_frequency <- wordcloud(words = lyrics_loudness0.0_frequency$tolower.lyrics_loudness0.0., freq = lyrics_loudness0.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[12]] <- lyrics_loudness0.0_frequency

lyrics_loudness60.0_frequency <- wordcloud(words = lyrics_loudness60.0_frequency$tolower.lyrics_loudness60.0., freq = lyrics_loudness60.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[13]] <- lyrics_loudness60.0_frequency

#speechiness

lyrics_speechiness0.0_frequency <- wordcloud(words = lyrics_speechiness0.0_frequency$tolower.lyrics_speechiness0.0., freq = lyrics_speechiness0.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[14]] <- lyrics_speechiness0.0_frequency

lyrics_speechiness0.96_frequency <- wordcloud(words = lyrics_speechiness0.96_frequency$tolower.lyrics_speechiness0.96., freq = lyrics_speechiness0.96_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[15]] <- lyrics_speechiness0.96_frequency

#tempo

lyrics_tempo0.0_frequency <- wordcloud(words = lyrics_tempo0.0_frequency$tolower.lyrics_tempo0.0., freq = lyrics_tempo0.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[16]] <- lyrics_tempo0.0_frequency

lyrics_tempo225.0_frequency <- wordcloud(words = lyrics_tempo225.0_frequency$tolower.lyrics_tempo225.0., freq = lyrics_duration2000000_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[17]] <- lyrics_tempo225.0_frequency

#valence

lyrics_valence0.0_frequency <- wordcloud(words = lyrics_valence0.0_frequency$tolower.lyrics_valence0.0., freq = lyrics_valence0.0_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[18]] <- lyrics_valence0.0_frequency 

lyrics_valence0.98_frequency <- wordcloud(words = lyrics_valence0.98_frequency$tolower.lyrics_valence0.98., freq = lyrics_valence0.98_frequency$Freq, min.freq = 10,
          max.words=20000, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
y[[19]] <- lyrics_valence0.98_frequency

word_plot <- c("acousticness0.01.bmp","acousticness0.995.bmp","danceability0.01.bmp","danceability0.97.bmp","duration2000000.bmp","duration5000.bmp","energy0.00.bmp","explicitTRUE.bmp","instrumentalness0.995.bmp","liveness0.0.bmp","liveness0.997.bmp","loudness0.0.bmp","loudness60.0.bmp","speechiness0.0.bmp","speechiness0.96.bmp","tempo0.0.bmp","tempo225.0.bmp","valence0.0.bmp","valence0.98.bmp")
word_index <- 1:19
word_value <- data.frame(word_plot, word_index)
#############
#Loading the necessary libraries
library(dplyr)
library(tidyverse)
library(graphics)

#############
#Barplot Histogram showing the top 40 words being used the most in each category 
#The plots are created in after putting the data in descending order

#Acousticness
x <- list()
lyrics_acousticness0.01_frequency <- lyrics_acousticness0.01_frequency[order(-lyrics_acousticness0.01_frequency$Freq),]
barplot(lyrics_acousticness0.01_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_acousticness0.01_frequency[1:40,]$tolower.lyrics_acousticness0.01.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[1]] <- lyrics_acousticness0.01_frequency

lyrics_acousticness0.995_frequency <- lyrics_acousticness0.995_frequency[order(-lyrics_acousticness0.995_frequency$Freq),]
barplot(lyrics_acousticness0.995_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_acousticness0.995_frequency[1:40,]$tolower.lyrics_acousticness0.995.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[2]] <- lyrics_acousticness0.995_frequency 

#Danceability

lyrics_danceability0.01_frequency <- lyrics_danceability0.01_frequency[order(-lyrics_danceability0.01_frequency$Freq),]
barplot(lyrics_danceability0.01_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_danceability0.01_frequency[1:40,]$tolower.lyrics_danceability0.01.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
x[[3]] <- lyrics_danceability0.01_frequency

lyrics_danceability0.97_frequency <- lyrics_danceability0.97_frequency[order(-lyrics_danceability0.97_frequency$Freq),]
barplot(lyrics_danceability0.97_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_danceability0.97_frequency[1:40,]$tolower.lyrics_danceability0.97.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[4]] <- lyrics_danceability0.97_frequency

#Duration

lyrics_duration2000000_frequency <- lyrics_duration2000000_frequency[order(-lyrics_duration2000000_frequency$Freq),]
barplot(lyrics_duration2000000_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_duration2000000_frequency[1:40,]$tolower.lyrics_duration2000000.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[5]] <- lyrics_duration2000000_frequency 

lyrics_duration5000_frequency <- lyrics_duration5000_frequency[order(-lyrics_duration5000_frequency$Freq),]
barplot(lyrics_duration5000_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_duration5000_frequency[1:40,]$tolower.lyrics_duration5000.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
x[[6]] <- lyrics_duration5000_frequency

#Energy

lyrics_energy0.00_frequency <- lyrics_energy0.00_frequency[order(-lyrics_energy0.00_frequency$Freq),]
barplot(lyrics_energy0.00_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_energy0.00_frequency[1:40,]$tolower.lyrics_energy0.00.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
x[[7]] <- lyrics_energy0.00_frequency

#Explicitness

lyrics_explicitTRUE_frequency <- lyrics_explicitTRUE_frequency[order(-lyrics_explicitTRUE_frequency$Freq),]
barplot(lyrics_explicitTRUE_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_explicitTRUE_frequency[1:40,]$tolower.lyrics_explicitTRUE.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[8]] <- lyrics_explicitTRUE_frequency

#Instumentalness

lyrics_instrumentalness0.995_frequency <- lyrics_instrumentalness0.995_frequency[order(-lyrics_instrumentalness0.995_frequency$Freq),]

barplot(lyrics_instrumentalness0.995_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_instrumentalness0.995_frequency[1:40,]$tolower.lyrics_instrumentalness0.995.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[9]] <- lyrics_instrumentalness0.995_frequency

#Liveness

lyrics_liveness0.0_frequency <- lyrics_liveness0.0_frequency[order(-lyrics_liveness0.0_frequency$Freq),]
barplot(lyrics_liveness0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_liveness0.0_frequency[1:40,]$tolower.lyrics_liveness0.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
x[[10]] <- lyrics_liveness0.0_frequency

lyrics_liveness0.997_frequency <- lyrics_liveness0.997_frequency[order(-lyrics_liveness0.997_frequency$Freq),]
barplot(lyrics_liveness0.997_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_liveness0.997_frequency[1:40,]$tolower.lyrics_liveness0.997.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
x[[11]] <- lyrics_liveness0.997_frequency 
#Loudness

lyrics_loudness0.0_frequency <- lyrics_loudness0.0_frequency[order(-lyrics_loudness0.0_frequency$Freq),]
barplot(lyrics_loudness0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_loudness0.0_frequency[1:40,]$tolower.lyrics_loudness0.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[12]] <- lyrics_loudness0.0_frequency

lyrics_loudness60.0_frequency <- lyrics_loudness60.0_frequency[order(-lyrics_loudness60.0_frequency$Freq),]
barplot(lyrics_loudness60.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_loudness60.0_frequency[1:40,]$tolower.lyrics_loudness60.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[13]] <- lyrics_loudness60.0_frequency
#Speechiness

lyrics_speechiness0.0_frequency <- lyrics_speechiness0.0_frequency[order(-lyrics_speechiness0.0_frequency$Freq),]
barplot(lyrics_speechiness0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_speechiness0.0_frequency[1:40,]$tolower.lyrics_speechiness0.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[14]] <- lyrics_speechiness0.0_frequency 

lyrics_speechiness0.96_frequency <- lyrics_speechiness0.96_frequency[order(-lyrics_speechiness0.96_frequency$Freq),]
barplot(lyrics_speechiness0.96_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_speechiness0.96_frequency[1:40,]$tolower.lyrics_speechiness0.96.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[15]] <- lyrics_speechiness0.96_frequency 

#Tempo

lyrics_tempo0.0_frequency <- lyrics_tempo0.0_frequency[order(-lyrics_tempo0.0_frequency$Freq),]
barplot(lyrics_tempo0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_tempo0.0_frequency[1:40,]$tolower.lyrics_tempo0.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[16]] <- lyrics_tempo0.0_frequency

lyrics_tempo225.0_frequency <- lyrics_tempo225.0_frequency[order(-lyrics_tempo225.0_frequency$Freq),]
barplot(lyrics_tempo225.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_tempo225.0_frequency[1:40,]$tolower.lyrics_tempo225.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")


x[[17]] <- lyrics_tempo225.0_frequency
#Valence

lyrics_valence0.0_frequency <- lyrics_valence0.0_frequency[order(-lyrics_valence0.0_frequency$Freq),]
barplot(lyrics_valence0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_valence0.0_frequency[1:40,]$tolower.lyrics_valence0.0.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")

x[[18]] <- lyrics_valence0.0_frequency

lyrics_valence0.98_frequency <- lyrics_valence0.98_frequency[order(-lyrics_valence0.98_frequency$Freq),]
barplot(lyrics_valence0.98_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_valence0.98_frequency[1:40,]$tolower.lyrics_valence0.98.,
        col ="lightblue", main ="Most frequent words",
        ylab = "Word frequencies")
x[[19]] <- lyrics_valence0.98_frequency

word_frequency <- c("acousticness0.01.bmp","acousticness0.995.bmp","danceability0.01.bmp","danceability0.97.bmp","duration2000000.bmp","duration5000.bmp","energy0.00.bmp","explicitTRUE.bmp","instrumentalness0.995.bmp","liveness0.0.bmp","liveness0.997.bmp","loudness0.0.bmp","loudness60.0.bmp","speechiness0.0.bmp","speechiness0.96.bmp","tempo0.0.bmp","tempo225.0.bmp","valence0.0.bmp","valence0.98.bmp")
ind_ex <- 1:19
value <- data.frame(word_frequency, ind_ex)
########################################
# App for the Gapminder dataset 
########################################
library(ggplot2)
library(shiny)
library(imager)
library(wordcloud)
library(RColorBrewer)


# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("word and its frequency plot"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput("name","Word frequency plot",
                  choices = value$word_frequency),
      selectInput("character","word plot",
                  choices = word_value$word_plot)
    ),
    # Show a plot of the generated distribution
    mainPanel(
      h3(textOutput("top")),
      plotOutput("freqplot"),
      h3(textOutput("mid")),
      plotOutput("wordplot")
      
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  
  output$top <- renderText({
    paste("Word Frequency plot")
  })
  
  
  
  output$freqplot <- renderPlot({
    if(which(value$word_frequency == input$name) == 1){
      lyrics_acousticness0.01_frequency <- lyrics_acousticness0.01_frequency[order(-lyrics_acousticness0.01_frequency$Freq),]
      barplot(lyrics_acousticness0.01_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_acousticness0.01_frequency[1:40,]$tolower.lyrics_acousticness0.01.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
      
    }else if(which(value$word_frequency == input$name) == 2){
      lyrics_acousticness0.995_frequency <- lyrics_acousticness0.995_frequency[order(-lyrics_acousticness0.995_frequency$Freq),]
      barplot(lyrics_acousticness0.995_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_acousticness0.995_frequency[1:40,]$tolower.lyrics_acousticness0.995.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
      
    }else if(which(value$word_frequency == input$name) == 3){
      lyrics_danceability0.01_frequency <- lyrics_danceability0.01_frequency[order(-lyrics_danceability0.01_frequency$Freq),]
      barplot(lyrics_danceability0.01_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_danceability0.01_frequency[1:40,]$tolower.lyrics_danceability0.01.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 4){
      lyrics_danceability0.97_frequency <- lyrics_danceability0.97_frequency[order(-lyrics_danceability0.97_frequency$Freq),]
      barplot(lyrics_danceability0.97_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_danceability0.97_frequency[1:40,]$tolower.lyrics_danceability0.97.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 5){
      lyrics_duration2000000_frequency <- lyrics_duration2000000_frequency[order(-lyrics_duration2000000_frequency$Freq),]
      barplot(lyrics_duration2000000_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_duration2000000_frequency[1:40,]$tolower.lyrics_duration2000000.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 6){
      lyrics_duration5000_frequency <- lyrics_duration5000_frequency[order(-lyrics_duration5000_frequency$Freq),]
      barplot(lyrics_duration5000_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_duration5000_frequency[1:40,]$tolower.lyrics_duration5000.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 7){
      lyrics_energy0.00_frequency <- lyrics_energy0.00_frequency[order(-lyrics_energy0.00_frequency$Freq),]
      barplot(lyrics_energy0.00_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_energy0.00_frequency[1:40,]$tolower.lyrics_energy0.00.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 8){
      lyrics_explicitTRUE_frequency <- lyrics_explicitTRUE_frequency[order(-lyrics_explicitTRUE_frequency$Freq),]
      barplot(lyrics_explicitTRUE_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_explicitTRUE_frequency[1:40,]$tolower.lyrics_explicitTRUE.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 9){
      lyrics_instrumentalness0.995_frequency <- lyrics_instrumentalness0.995_frequency[order(-lyrics_instrumentalness0.995_frequency$Freq),]
      
      barplot(lyrics_instrumentalness0.995_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_instrumentalness0.995_frequency[1:40,]$tolower.lyrics_instrumentalness0.995.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 10){
      lyrics_liveness0.0_frequency <- lyrics_liveness0.0_frequency[order(-lyrics_liveness0.0_frequency$Freq),]
      barplot(lyrics_liveness0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_liveness0.0_frequency[1:40,]$tolower.lyrics_liveness0.0.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 11){
      lyrics_liveness0.997_frequency <- lyrics_liveness0.997_frequency[order(-lyrics_liveness0.997_frequency$Freq),]
      barplot(lyrics_liveness0.997_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_liveness0.997_frequency[1:40,]$tolower.lyrics_liveness0.997.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 12){
      lyrics_loudness0.0_frequency <- lyrics_loudness0.0_frequency[order(-lyrics_loudness0.0_frequency$Freq),]
      barplot(lyrics_loudness0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_loudness0.0_frequency[1:40,]$tolower.lyrics_loudness0.0.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
      
    }else if(which(value$word_frequency == input$name) == 13){
      lyrics_loudness60.0_frequency <- lyrics_loudness60.0_frequency[order(-lyrics_loudness60.0_frequency$Freq),]
      barplot(lyrics_loudness60.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_loudness60.0_frequency[1:40,]$tolower.lyrics_loudness60.0.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
      
    }else if(which(value$word_frequency == input$name) == 14){
      lyrics_speechiness0.0_frequency <- lyrics_speechiness0.0_frequency[order(-lyrics_speechiness0.0_frequency$Freq),]
      barplot(lyrics_speechiness0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_speechiness0.0_frequency[1:40,]$tolower.lyrics_speechiness0.0.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 15){
      lyrics_speechiness0.96_frequency <- lyrics_speechiness0.96_frequency[order(-lyrics_speechiness0.96_frequency$Freq),]
      barplot(lyrics_speechiness0.96_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_speechiness0.96_frequency[1:40,]$tolower.lyrics_speechiness0.96.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 16){
      lyrics_tempo0.0_frequency <- lyrics_tempo0.0_frequency[order(-lyrics_tempo0.0_frequency$Freq),]
      barplot(lyrics_tempo0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_tempo0.0_frequency[1:40,]$tolower.lyrics_tempo0.0.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 17){
      lyrics_tempo225.0_frequency <- lyrics_tempo225.0_frequency[order(-lyrics_tempo225.0_frequency$Freq),]
      barplot(lyrics_tempo225.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_tempo225.0_frequency[1:40,]$tolower.lyrics_tempo225.0.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 18){
      lyrics_valence0.0_frequency <- lyrics_valence0.0_frequency[order(-lyrics_valence0.0_frequency$Freq),]
      barplot(lyrics_valence0.0_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_valence0.0_frequency[1:40,]$tolower.lyrics_valence0.0.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }else if(which(value$word_frequency == input$name) == 19){
      lyrics_valence0.98_frequency <- lyrics_valence0.98_frequency[order(-lyrics_valence0.98_frequency$Freq),]
      barplot(lyrics_valence0.98_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_valence0.98_frequency[1:40,]$tolower.lyrics_valence0.98.,
              col ="lightblue", main ="Most frequent words",
              ylab = "Word frequencies")
    }
    
    #x[[which(value$word_frequency == input$name)]]
    
  })
  
  output$mid <- renderText({
    paste("Word plot")
  })
  
  
  output$wordplot <- renderPlot({
    if(which(word_value$word_plot == input$character) == 1){
      lyrics_acousticness0.01_frequency <-wordcloud(words = lyrics_acousticness0.01_frequency$tolower.lyrics_acousticness0.01., freq = lyrics_acousticness0.01_frequency$Freq, min.freq = 10,
                                                    max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                    colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 2){
      lyrics_acousticness0.995_frequency <- wordcloud(words = lyrics_acousticness0.995_frequency$tolower.lyrics_acousticness0.995., freq = lyrics_acousticness0.995_frequency$Freq, min.freq = 10,
                                                      max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                      colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 3){
      lyrics_danceability0.01_frequency <- wordcloud(words = lyrics_danceability0.01_frequency$tolower.lyrics_danceability0.01., freq = lyrics_danceability0.01_frequency$Freq, min.freq = 10,
                                                     max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                     colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 4){
      lyrics_danceability0.97_frequency  <- wordcloud(words = lyrics_danceability0.97_frequency$tolower.lyrics_danceability0.97., freq = lyrics_danceability0.01_frequency$Freq, min.freq = 10,
                                                      max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                      colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 5){
      lyrics_duration2000000_frequency <- wordcloud(words = lyrics_duration2000000_frequency$tolower.lyrics_duration2000000., freq = lyrics_duration2000000_frequency$Freq, min.freq = 10,
                                                    max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                    colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 6){
      lyrics_duration5000_frequency <- wordcloud(words = lyrics_duration5000_frequency$tolower.lyrics_duration5000., freq = lyrics_duration5000_frequency$Freq, min.freq = 10,
                                                 max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                 colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 7){
      lyrics_energy0.00_frequency <- wordcloud(words = lyrics_energy0.00_frequency$tolower.lyrics_energy0.00., freq = lyrics_energy0.00_frequency$Freq, min.freq = 10,
                                               max.words=20000, random.order=FALSE, rot.per=0.35, 
                                               colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 8){
      
      lyrics_explicitTRUE_frequency <- wordcloud(words = lyrics_explicitTRUE_frequency$tolower.lyrics_explicitTRUE., freq = lyrics_explicitTRUE_frequency$Freq, min.freq = 10,
                                                 max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                 colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 9){
      lyrics_instrumentalness0.995_frequency <- wordcloud(words = lyrics_instrumentalness0.995_frequency$tolower.lyrics_instrumentalness0.995., freq = lyrics_instrumentalness0.995_frequency$Freq, min.freq = 10,
                                                          max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                          colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 10){
      lyrics_liveness0.0_frequency <- wordcloud(words = lyrics_liveness0.0_frequency$tolower.lyrics_liveness0.0., freq = lyrics_liveness0.0_frequency$Freq, min.freq = 10,
                                                max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 11){
      lyrics_liveness0.997_frequency  <- wordcloud(words = lyrics_liveness0.997_frequency$tolower.lyrics_liveness0.997., freq = lyrics_liveness0.997_frequency$Freq, min.freq = 10,
                                                   max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                   colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 12){
      lyrics_loudness0.0_frequency <- wordcloud(words = lyrics_loudness0.0_frequency$tolower.lyrics_loudness0.0., freq = lyrics_loudness0.0_frequency$Freq, min.freq = 10,
                                                max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 13){
      lyrics_loudness60.0_frequency <- wordcloud(words = lyrics_loudness60.0_frequency$tolower.lyrics_loudness60.0., freq = lyrics_loudness60.0_frequency$Freq, min.freq = 10,
                                                 max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                 colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 14){
      lyrics_speechiness0.0_frequency <- wordcloud(words = lyrics_speechiness0.0_frequency$tolower.lyrics_speechiness0.0., freq = lyrics_speechiness0.0_frequency$Freq, min.freq = 10,
                                                   max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                   colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 15){
      lyrics_speechiness0.96_frequency <- wordcloud(words = lyrics_speechiness0.96_frequency$tolower.lyrics_speechiness0.96., freq = lyrics_speechiness0.96_frequency$Freq, min.freq = 10,
                                                    max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                    colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 16){
      lyrics_tempo0.0_frequency <- wordcloud(words = lyrics_tempo0.0_frequency$tolower.lyrics_tempo0.0., freq = lyrics_tempo0.0_frequency$Freq, min.freq = 10,
                                             max.words=20000, random.order=FALSE, rot.per=0.35, 
                                             colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 17){
      lyrics_tempo225.0_frequency <- wordcloud(words = lyrics_tempo225.0_frequency$tolower.lyrics_tempo225.0., freq = lyrics_duration2000000_frequency$Freq, min.freq = 10,
                                               max.words=20000, random.order=FALSE, rot.per=0.35, 
                                               colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 18){
      lyrics_valence0.0_frequency <- wordcloud(words = lyrics_valence0.0_frequency$tolower.lyrics_valence0.0., freq = lyrics_valence0.0_frequency$Freq, min.freq = 10,
                                               max.words=20000, random.order=FALSE, rot.per=0.35, 
                                               colors=brewer.pal(8, "Dark2"))
    }else if(which(word_value$word_plot == input$character) == 19){
      lyrics_valence0.98_frequency <- wordcloud(words = lyrics_valence0.98_frequency$tolower.lyrics_valence0.98., freq = lyrics_valence0.98_frequency$Freq, min.freq = 10,
                                                max.words=20000, random.order=FALSE, rot.per=0.35, 
                                                colors=brewer.pal(8, "Dark2"))
    }
    
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)
