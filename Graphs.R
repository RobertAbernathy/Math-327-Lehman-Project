library(readr)
library(ggplot2)
pokemon <- read_csv("pokemon_complete_stats.csv")
hist(pokemon$speed, breaks = seq(0, 255, length.out = 17))
hist(pokemon$capture_rate, breaks = seq(0, 255, length.out = 17))

table(pokemon$shape) |> barplot()
ggplot(pokemon, aes(x=shape)) + geom_bar()
ggplot(pokemon) +aes(x=shape)+ geom_bar()
