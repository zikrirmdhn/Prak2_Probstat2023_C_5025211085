#No 1
x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)

#a. Standar Deviasi
sd <- sd(y-x)
print(sd)

#b. t dan p-value
test <- t.test (y, x, paired = TRUE)
print(test)

#c
p <- test$p.value
alpha <- 0.05
if (p < alpha) {
  cat("Ada pengaruh signifikan secara statistika\n\n")
} else {
  cat("Tidak ada pengaruh signifikan secara statistika\n\n")
}



#No 2
library(BSDA)

meanx <- 23500
sigmax <- 3000
nx <- 100
mu <- 25000
zsum.test(mean.x = meanx, sigma.x = sigmax, n.x = nx, alternative = "greater", mu = mu, conf.level = 0.95)  



#No 3
#b
n_bdg <- 20
n_bali <- 27
mean_bdg <- 3.64
mean_bali<- 2.79
sd_bdg <- 1.67
sd_bali <- 1.5

tsum.test( mean.x = mean_bdg, mean.y = mean_bali, 
           n.x = n_bdg, n.y = n_bali, 
           s.x = sd_bdg, s.y = sd_bali,
           alternative="two.side", var.equal = TRUE,  conf.level = 0.95
)

#c
library(mosaic)
df <- 2
plotDist(dist = 't', df = df, col = "blue")

#d
crit_l <- qt(p = 0.025, df = df, lower.tail = TRUE)
print(crit_l)

crit_r <- qt(p = 0.025, df = df, lower.tail = FALSE)
print(crit_r)



#No 4
data <- read.csv("C:/Users/Lenovo/Downloads/GTL.csv")

#a
library(ggplot2)
ggplot(data, aes(x = Temp, y = Light)) + geom_point() + facet_grid(.~Glass, labeller = label_both)

#b
anov <- aov(Light ~ Glass * Temp, data = data)
innova <- anova(anov) #sorry, but anova and innova sound similar :)
print(innova)