#creating dataset for Exercise 17 

spring_weights <- c(7.8, 5.6, 7.2, 8.6, 8.4, 7.1, 10.7,
                    8.9, 8.0, 8.2, 8.5, 8.7, 6.0, 7.6,
                    9.0, 8.1, 8.4, 6.7, 8.0)

print(spring_weights)

#Histogram with bin width h = 1 and origin k = 5
bin_width <- 1 
origin <-5
break_seq<- seq(origin, max(spring_weights) + bin_width, by = bin_width)

hist(spring_weights, breaks = breaks_seq, col = "lightblue", border = "black", main = "Histogram of Spring Weights bins 1", xlab = "Maximal Weight (tons)")

#Histogram with bin width h = 0.5 and origin k = 5

bin_width_2 <- 0.5

breaks_seq_2<- seq(origin, max(spring_weights) + bin_width_2, by = bin_width_2)

hist(spring_weights, breaks = breaks_seq_2, col = "lightblue", border = "black", main = "Histogram of Spring Weights bins 0.5", xlab = "Maximal Weight (tons)")

