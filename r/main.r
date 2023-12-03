#!/usr/bin/env Rscript

library(tidytext) # for data, unnest_tokens
data(stop_words)

library(janeaustenr) # for austen_books

library(dplyr) # for group_by, anti_join, inner_join, count, mutate

library(tidyr) # for pivot_wider

tidy_books <- austen_books() %>%
  group_by(book) %>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words)


get_sentiments("afinn")

sentiment <- tidy_books %>%
  inner_join(get_sentiments("afinn")) %>%
  summarise(sentiment = sum(value)) %>%
  mutate(method = "AFINN")

sentiment

