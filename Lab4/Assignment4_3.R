y <- rnorm(50)
plot(density(y), type = "l")

size <- 4
av <- numeric(50)
for (i in 1:50) {
  av[i] <- mean(rnorm(size))
}
lines(density(av), col = "red")

size <- 9
av <- numeric(50)
for (i in 1:50) {
  av[i] <- mean(rnorm(size))
}
lines(density(av), col = "green")

size <- 25
av <- numeric(50)
for (i in 1:50) {
  av[i] <- mean(rnorm(size))
}
lines(density(av), col = "blue")
