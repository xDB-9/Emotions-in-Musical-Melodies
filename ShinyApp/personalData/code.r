library(jsonlite)
library(lubridate)
library(gghighlight)
library(spotifyr)
library(tidyverse)
library(knitr)
library(ggplot2)
library(plotly)

######################
#PLAYBACK ACTIVITY PER WEEK AND HOUR
###################### 
p =list()                                                                                    

p[[1]] = streamingHours_plot
hoursArtist_Plot <- hoursArtist %>% 
  ggplot(aes(x = date, y = hours, group = artistName)) + 
  labs(x= "Date", y= "Hours of music playback") + 
  ggtitle("Music Listening Over Months", "Playback activity per week- Bar Plots- Line Plot") +
  geom_line()

######################
#MOST LISTENED ARTISTS (MORE THAN 3 HOURS)
######################

minutesMostListened_plot <- minutesMostListened %>%
  ggplot(aes(x = artistName, y = minutesListened)) + 
  geom_col(aes(fill = minutesListened)) +
  scale_fill_gradient(low = "blue", high = "red") + 
  labs(x= "Artist", y= "Minutes of music playback") + 
  ggtitle("Most Heard Artist", "> 3 hours listened to") +
  theme(axis.text.x = element_text(angle = 90))
p[[2]] = minutesMostListened_plot 
######################
# PLAYBACK ACTIVITY BY DATE AND TIME OF DAY
######################

timeDay_plot <- timeDay %>% 
  ggplot(aes(x = hour, y = date, fill = minutesListened)) + 
  geom_tile() + 
  labs(x= "Time of the day", y= "Date") + 
  ggtitle("Activity by date and time of day") +
  scale_fill_gradient(low = "blue", high = "red")
p[[3]] = timeDay_plot
######################
# PLAYBACK ACTIVITY BY TIME OF THE DAY
######################

hoursDay_plot <- hoursDay %>% 
  ggplot(aes(x = hour, y = minutesListened, group = date)) + 
  geom_col(fill = "violet") +
  labs(x= "Time of the day", y= "Minutes of music playback") + 
  ggtitle("Time of the Day v/s minutes of playback")
p[[4]] =hoursDay_plot

######################
# PLAYBACK ACTIVITY BY TIME OF THE DAY AND WEEKDAY
######################

hoursDay_heatmap <- hoursDay %>% 
  group_by(weekday, hour) %>% 
  summarize(minutes = sum(minutesListened)) %>% 
  ggplot(aes(x = hour, weekday, fill = minutes)) + 
  geom_tile() + 
  scale_fill_gradient(low = "blue", high = "red") +
  labs(x= "Time of the day", y= "Weekday") + 
  ggtitle("Day of the week v/s time of the day", 
          "Heat Map - Weekly activity from 0 to 24 hours")
p[[5]] = hoursDay_heatmap 

######################
# PLAYBACK ACTIVITY BY TIME OF THE DAY AND WEEKDAY - LINE CHART
######################

weekDay_plot <- weekDay %>% 
  ggplot(aes(x = hour, y = minutes, color = weekday)) + 
  geom_line() +
  labs(x= "Time of the day", y= "Minutes of music playback") + 
  ggtitle("Day of the week v/s time of the day", 
          "Line chart - Weekly activity from 0 to 24 hours") 
p[[6]] = weekDay_plot

######################
# PLAYBACK ACTIVITY BY DAY TYPE
######################

dayType_plot <- dayType %>%
  ggplot(aes(x = hour, y = minutes, color = day_type)) + 
  geom_line() +
  labs(x= "Time of the day", y= "Minutes of music playback") + 
  ggtitle("Time of the day v/s Minutes of music grouped by DayTypes", 
          "Weekday and weekend activity from 0 to 24 hours") 
p[[7]] = dayType_plot
categ <- c("MOST LISTENED ARTISTS (MORE THAN 3 HOURS)","PLAYBACK ACTIVITY BY DATE AND TIME OF DAY","PLAYBACK ACTIVITY BY DAY TYPE","PLAYBACK ACTIVITY BY TIME OF THE DAY AND WEEKDAY - LINE CHART","PLAYBACK ACTIVITY BY TIME OF THE DAY AND WEEKDAY","PLAYBACK ACTIVITY BY TIME OF THE DAY","PLAYBACK ACTIVITY PER WEEK AND HOUR")
index <- 1:7
dat <- data.frame(categ, index)


########################################
# App for the Gapminder dataset 
########################################
library(ggplot2)
library(shiny)
library(imager)


# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel(""),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput("name","Image Plot",
                  choices = dat$categ)
    ),
    # Show a plot of the generated distribution
    mainPanel(
      h3("Graphs"),
      plotOutput("myPlot")
      
    )
  )
)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  
  
  
  
  output$myPlot <- renderPlot({
    
    p[[which(dat$categ == input$name)]]
    
  })
  
  
}

# Run the application 
shinyApp(ui = ui, server = server)
