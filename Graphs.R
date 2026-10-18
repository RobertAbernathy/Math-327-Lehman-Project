library(readr)
library(ggplot2)
pokemon <- read_csv("pokemon_complete_stats.csv")

hist(pokemon$speed, breaks = seq(0, 255, length.out = 33), main="Histogram of Speed", xlab="Speed", ylab="Count")
mean(pokemon$speed)
median(pokemon$speed)

hist(pokemon$capture_rate, breaks = seq(0, 255, length.out = 33), main="Histogram of Capture Rate", xlab="Capture Rate", ylab="Count")
mean(pokemon$capture_rate)
median(pokemon$capture_rate)

hist(pokemon$weight_hg, breaks = seq(0, 10000, length.out = 101), main="Histogram of Weight", xlab="Weight (dg)", ylab="Count")
mean(pokemon$weight_hg)
median(pokemon$weight_hg)

table(pokemon$shape) |> barplot(main="Bar Chart of Pokemon Shapes", cex.names = 0.5)

pokemonNoOutliers = subset(subset(pokemon, weight_hg!=10000),  weight_hg!=0)
hist(pokemonNoOutliers$weight_hg, breaks = seq(0, 10000, length.out = 101), main="Histogram of Weight", xlab="Weight (dg)", ylab="Count")
mean(pokemonNoOutliers$weight_hg)
median(pokemonNoOutliers$weight_hg)

plot(log(pokemonNoOutliers$weight_hg), pokemonNoOutliers$speed)
cor(pokemonNoOutliers$weight_hg, pokemonNoOutliers$capture_rate)
cor(log(pokemonNoOutliers$weight_hg), pokemonNoOutliers$speed)
cor(pokemonNoOutliers$speed, pokemonNoOutliers$capture_rate)
