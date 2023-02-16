################Loading the necessary Libraries

library(rvest)
library(dplyr)
library(spotifyr)
library(plotly)
library(geniusr)
library(tidytext)
library(textdata)
library(ggplot2)
library(extrafont)

################Downloading words with emotions

angry_words <- get_sentiments("nrc") %>%
  filter(sentiment == "anger") %>%
  select(word) %>%
  mutate(anger = TRUE)

joy_words <- get_sentiments("nrc") %>%
  filter(sentiment == "joy") %>%
  select(word) %>%
  mutate(joy = TRUE)

sad_words <- get_sentiments("nrc") %>%
  filter(sentiment == "sadness") %>%
  select(word) %>%
  mutate(sadness = TRUE)

positive_words <- get_sentiments("nrc") %>%
  filter(sentiment == "positive") %>%
  select(word) %>%
  mutate(positive = TRUE)

negative_words <- get_sentiments("nrc") %>%
  filter(sentiment == "negative") %>%
  select(word) %>%
  mutate(negative = TRUE)

fear_words <- get_sentiments("nrc") %>%
  filter(sentiment == "fear") %>%
  select(word) %>%
  mutate(fear = TRUE)

trust_words <- get_sentiments("nrc") %>%
  filter(sentiment == "trust") %>%
  select(word) %>%
  mutate(trust = TRUE)
