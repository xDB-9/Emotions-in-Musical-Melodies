#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(ggplot2)
library(shiny)
library(tidyverse)
library(viridis)
library(wordcloud)

# Define UI for application that draws a histogram
ui <- fluidPage(
  # Application title
  titlePanel("Spotify Upcoming Artist"),
  sidebarLayout(
    sidebarPanel(
      selectInput("Country",
                  "Choose which Country",
                  choices = (c(upcoming_artists_test$X1))),
      selectInput("Attribute", 
                         "Choose which Attribute",
                         choices = (c("Acousticness", "Danceability", "Duration", "Energy", "Explicit", 
                                            "Instrumentalness", "Liveness", "Loudness", "Speechiness", "Tempo", "Valence"))),
      selectInput("Limits", 
                         "Choose limit for corresponding attributes",
                         choices = (c("Higher", "Lower")))
    ),
    # Show a plot of the generated distribution
    mainPanel(
      h3("Lyric Analysis for the Upcoming Artists"),
      tableOutput("Artists_in_the_country"),
      plotOutput("Songs_for_those_attributes"),
      plotOutput("WordPlot"),
      plotOutput("Frequency_Plot"),
      plotOutput("Chart_for_overlap_with_words_with_emotions"),
      verbatimTextOutput("summary")
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  
  output$Artists_in_the_country <- renderTable({
    dataset <- as.data.frame(upcoming_artists_test)
    colnames(dataset) <- c("Country", "Artist Name")
    #as.character(input$Country)
    dataset[dataset == (input$Country),]
  })

  output$Songs_for_those_attributes <- renderPlot({
    dataset <- upcoming_artists_attributes
    attribute <- input$Attribute
    col_number = which( colnames(dataset)== attribute )
    dataset <- as.data.frame(dataset[,c(col_number,1,14,15)])
    dataset <- dataset[dataset[,4]==input$Country,]
    p <- ggplot(dataset, aes(x = `Track Name`, y = dataset[,1]))
    p + geom_bar(stat='identity') + 
      xlab("Song names for the artists of the selected country") + ylab("Attribute")
    #dataset
    # for(i in 1:upcoming_artists)
    # {
    #   if (dataset$`Artist Name` == upcoming_artists$X2[i])
    #   {
    #      dataset$Country <- upcoming_artists$X1[i]
    #   }
    # }
    
})
  
  output$WordPlot <- renderPlot({
    if(input$Attribute == "Valence")
    {
      if (input$Limits == "Upper")
      {
        wordcloud(words = lyrics_valence_upcoming0.85_frequency$tolower.lyrics_valence_upcoming0.85., freq = lyrics_valence_upcoming0.85_frequency$Freq, min.freq = 10,
                                            max.words=20000, random.order=FALSE, rot.per=0.35, 
                                            colors=brewer.pal(8, "Dark2"))
      }
      else
      {
        wordcloud(words = lyrics_valence_upcoming0.1_frequency$tolower.lyrics_valence_upcoming0.1., freq = lyrics_valence_upcoming0.1_frequency$Freq, min.freq = 10,
                                            max.words=20000, random.order=FALSE, rot.per=0.35, 
                                            colors=brewer.pal(8, "Dark2"))
      }
    } else if(input$Attribute == "Tempo")
    {
      if (input$Limits == "Upper")
      {
        wordcloud(words = lyrics_tempo_upcoming185_frequency$tolower.lyrics_tempo_upcoming185., freq = lyrics_tempo_upcoming185_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
      else
      {
        ggplot() +
          annotate("text", x = 10,  y = 10,
                   size = 6,
                   label = "Sub-Setting not possible :( Choose some other atribute or limit") + theme_void()
        
      }
    } else if(input$Attribute == "Loudness")
    {
      if (input$Limits == "Upper")
      {
        wordcloud(words = lyrics_loudness_upcoming_20_frequency$tolower.lyrics_loudness_upcoming_20., freq = lyrics_loudness_upcoming_20_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
      else
      {
        ggplot() +
          annotate("text", x = 10,  y = 10,
                   size = 6,
                   label = "Sub-Setting not possible :( Choose some other atribute or limit") + theme_void()
        
      }
    } else if(input$Attribute == "Speechiness")
    {
      if (input$Limits == "Upper")
      {
        wordcloud(words = lyrics_speechiness_upcoming0.7_frequency$tolower.lyrics_speechiness_upcoming0.7., freq = lyrics_speechiness_upcoming0.7_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
      else
      {
        wordcloud(words = lyrics_speechiness_upcoming0.03_frequency$tolower.lyrics_speechiness_upcoming0.03., freq = lyrics_speechiness_upcoming0.03_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
    } else if(input$Attribute == "Liveness")
    {
      if (input$Limits == "Upper")
      {
        wordcloud(words = lyrics_liveness_upcoming0.75_frequency$tolower.lyrics_liveness_upcoming0.75., freq = lyrics_liveness_upcoming0.75_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
      else
      {
        wordcloud(words = lyrics_liveness_upcoming0.05_frequency$tolower.lyrics_liveness_upcoming0.05., freq = lyrics_liveness_upcoming0.05_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
    } else if(input$Attribute == "Explicit")
    {
      if (input$Limits == "Upper")
        {
          wordcloud(words = lyrics_explicit_upcomingTRUE_frequency$tolower.lyrics_explicit_upcomingTRUE., freq = lyrics_explicit_upcomingTRUE_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
        }
      else
      {
        ggplot() +
          annotate("text", x = 10,  y = 10,
                   size = 6,
                   label = "Sorry, we have lyrics for explicit songs at the moment :(") + theme_void()
      }} else if(input$Attribute == "Energy")
    {
      if (input$Limits == "Upper")
      {
        wordcloud(words = lyrics_energy_upcoming0.85_frequency$tolower.lyrics_energy_upcoming0.85., freq = lyrics_energy_upcoming0.85_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
      else
      {
        wordcloud(words = lyrics_energy_upcoming0.2_frequency$tolower.lyrics_energy_upcoming0.2., freq = lyrics_energy_upcoming0.2_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
    } else if(input$Attribute == "Acousticness")
    {
      if (input$Limits == "Upper")
      {
        wordcloud(words = lyrics_acousticness_upcoming0.75_frequency$tolower.lyrics_acousticness_upcoming0.75., freq = lyrics_acousticness_upcoming0.75_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
      else
      {
        wordcloud(words = lyrics_acousticness_upcoming0.01_frequency$tolower.lyrics_acousticness_upcoming0.01., freq = lyrics_acousticness_upcoming0.01_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
    } else if(input$Attribute == "Danceability")
    {
      if (input$Limits == "Upper")
      {
        wordcloud(words = lyrics_danceability_upcoming0.8_frequency$tolower.lyrics_danceability_upcoming0.8., freq = lyrics_danceability_upcoming0.8_frequency$Freq, min.freq = 0,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
      else
      {
        wordcloud(words = lyrics_danceability_upcoming0.3_frequency$tolower.lyrics_danceability_upcoming0.3., freq = lyrics_danceability_upcoming0.3_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
    } else if(input$Attribute == "Duration")
    {
      if (input$Limits == "Upper")
      {
        wordcloud(words = lyrics_duration_upcoming400000_frequency$tolower.lyrics_duration_upcoming400000., freq = lyrics_duration_upcoming400000_frequency$Freq, min.freq = 10,
                  max.words=20000, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))
      }
      else
      {
        ggplot() +
          annotate("text", x = 10,  y = 10,
                   size = 6,
                   label = "Sorry, at the moment we only enjoy longer songs, so we 
      ignored shorter ones :(") + theme_void()
      }
        
    }
  })
  
  output$Frequency_Plot <- renderPlot({
    if(input$Attribute == "Valence")
    {
      if (input$Limits == "Upper")
      {
        barplot(lyrics_valence_upcoming0.85_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_valence_upcoming0.85_frequency[1:40,]$tolower.lyrics_valence_upcoming0.85.,
                col ="lightblue", main ="Most frequent words",
                ylab = "Word frequencies")
      }
      else
      {
        barplot(lyrics_valence_upcoming0.1_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_valence_upcoming0.1_frequency[1:40,]$tolower.lyrics_valence_upcoming0.1.,
                col ="lightblue", main ="Most frequent words",
                ylab = "Word frequencies")
      }
    } else if(input$Attribute == "Tempo")
    {
      if (input$Limits == "Upper")
      {
        barplot(lyrics_tempo_upcoming185_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_tempo_upcoming185_frequency[1:40,]$tolower.lyrics_tempo_upcoming185.,
                col ="lightblue", main ="Most frequent words",
                ylab = "Word frequencies")
      }
      else
      {
        ggplot() +
          annotate("text", x = 10,  y = 10,
                   size = 6,
                   label = "Sub-Setting not possible :( Choose some other atribute or limit") + theme_void()
        
      }
    } else if(input$Attribute == "Loudness")
    {
      if (input$Limits == "Upper")
      {
        barplot(lyrics_loudness_upcoming_20_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_loudness_upcoming_20_frequency[1:40,]$tolower.lyrics_loudness_upcoming_20.,
                col ="lightblue", main ="Most frequent words",
                ylab = "Word frequencies")
      }
      else
      {
        ggplot() +
          annotate("text", x = 10,  y = 10,
                   size = 6,
                   label = "Sub-Setting not possible :( Choose some other atribute or limit") + theme_void()
        
      }
    } else if(input$Attribute == "Speechiness")
    {
      if (input$Limits == "Upper")
      {
        barplot(lyrics_speechiness_upcoming0.7_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_speechiness_upcoming0.7_frequency[1:40,]$tolower.lyrics_speechiness_upcoming0.7.,
                col ="lightblue", main ="Most frequent words",
                ylab = "Word frequencies")
      }
      else
      {
        barplot(lyrics_speechiness_upcoming0.03_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_speechiness_upcoming0.03_frequency[1:40,]$tolower.lyrics_speechiness_upcoming0.03.,
                col ="lightblue", main ="Most frequent words",
                ylab = "Word frequencies")
      }
    } else if(input$Attribute == "Liveness")
    {
      if (input$Limits == "Upper")
      {
        barplot(lyrics_liveness_upcoming0.75_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_liveness_upcoming0.75_frequency[1:40,]$tolower.lyrics_liveness_upcoming0.75.,
                col ="lightblue", main ="Most frequent words",
                ylab = "Word frequencies")
      }
      else
      {
        barplot(lyrics_liveness_upcoming0.05_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_liveness_upcoming0.05_frequency[1:40,]$tolower.lyrics_liveness_upcoming0.05.,
                col ="lightblue", main ="Most frequent words",
                ylab = "Word frequencies")
      }
    } else if(input$Attribute == "Explicit")
    {
      if (input$Limits == "Upper")
      {
        barplot(lyrics_explicit_upcomingTRUE_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_explicit_upcomingTRUE_frequency[1:40,]$tolower.lyrics_explicit_upcomingTRUE.,
                col ="lightblue", main ="Most frequent words",
                ylab = "Word frequencies")
      }
      else
      {
        ggplot() +
          annotate("text", x = 10,  y = 10,
                   size = 6,
                   label = "Sorry, we have lyrics for explicit songs at the moment :(") + theme_void()
      }} else if(input$Attribute == "Energy")
    {
        if (input$Limits == "Upper")
        {
          barplot(lyrics_energy_upcoming0.85_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_energy_upcoming0.85_frequency[1:40,]$tolower.lyrics_energy_upcoming0.85.,
                  col ="lightblue", main ="Most frequent words",
                  ylab = "Word frequencies")
        }
        else
        {
          barplot(lyrics_energy_upcoming0.2_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_energy_upcoming0.2_frequency[1:40,]$tolower.lyrics_energy_upcoming0.2.,
                  col ="lightblue", main ="Most frequent words",
                  ylab = "Word frequencies")
        }
      } else if(input$Attribute == "Acousticness")
    {
        if (input$Limits == "Upper")
        {
          barplot(lyrics_acousticness_upcoming0.75_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_acousticness_upcoming0.75_frequency[1:40,]$tolower.lyrics_acousticness_upcoming0.75.,
                  col ="lightblue", main ="Most frequent words",
                  ylab = "Word frequencies")
        }
        else
        {
          barplot(lyrics_acousticness_upcoming0.01_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_acousticness_upcoming0.01_frequency[1:40,]$tolower.lyrics_acousticness_upcoming0.01.,
                  col ="lightblue", main ="Most frequent words",
                  ylab = "Word frequencies")
        }
      } else if(input$Attribute == "Danceability")
    {
        if (input$Limits == "Upper")
        {
          barplot(lyrics_danceability_upcoming0.8_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_danceability_upcoming0.8_frequency[1:40,]$tolower.lyrics_danceability_upcoming0.8.,
                  col ="lightblue", main ="Most frequent words",
                  ylab = "Word frequencies")
        }
        else
        {
          barplot(lyrics_danceability_upcoming0.3_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_danceability_upcoming0.3_frequency[1:40,]$tolower.lyrics_danceability_upcoming0.3.,
                  col ="lightblue", main ="Most frequent words",
                  ylab = "Word frequencies")
        }
      } else if(input$Attribute == "Duration")
    {
        if (input$Limits == "Upper")
        {
          barplot(lyrics_duration_upcoming400000_frequency[1:40,]$Freq, las = 2, names.arg = lyrics_duration_upcoming400000_frequency[1:40,]$tolower.lyrics_duration_upcoming400000.,
                  col ="lightblue", main ="Most frequent words",
                  ylab = "Word frequencies")
        }
        else
        {
          ggplot() +
            annotate("text", x = 10,  y = 10,
                     size = 6,
                     label = "Sorry, at the moment we only enjoy longer songs, so we 
      ignored shorter ones :(") + theme_void()
        }
        
      }
  })
  
  output$Chart_for_overlap_with_words_with_emotions <- renderPlot({
    ggplot(melted_lyrics_songs_emotions, aes(X15, variable, fill= value)) + 
      geom_tile() +
      scale_fill_viridis(discrete = TRUE) +
      theme(legend.position="none")
    
    
  })
  
  output$summary <- renderPrint({
    "Yellow Colour is for highest value and violet is for lowest value."
  })
}

# Run the application 
shinyApp(ui = ui, server = server)

