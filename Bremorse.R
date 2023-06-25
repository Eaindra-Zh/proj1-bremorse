library(tidyverse)
library(ggthemes)
Bre <- read_csv("Bremorse.csv") %>%
  pivot_longer(c(2,3), names_to = "Opinion", values_to = "Percentage")

ggplot(Bre) +
  aes(x = date, y = Percentage, color = Opinion) +
  geom_line(linewidth = 2) +
  labs(title = "Bremorse", 
       subtitle = "'In hindsight, do you think Britain was wrong or right to leave the EU'",
       color = "Opinion") +
  xlab(NULL) + 
  ylab(NULL) +
  theme_economist_white() + 
  scale_y_continuous(labels = scales::label_percent())

ggsave('Bremorse_graph.png')
