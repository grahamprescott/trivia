library(countrycode)
library(tidyverse)
library(magrittr)

letter_list <- letters[1:26] # for single strings you can use which(letters==(substr("albania",1,1)))
etc but got errors when tried to incorporate into transform()

countries <- casefold(countrycode_data$country.name.en, upper = FALSE) %>%
  as.tibble() %>%
  rename(name = value) %>%
  transform(initial.value = match(substr(name,1,1), letter_list), final.value = match(substr(name, nchar(name), nchar (name)), letter_list)) %>%
  filter(final.value == (initial.value + 1)) %>%
  print
