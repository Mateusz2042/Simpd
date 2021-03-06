library("ggplot2")

df <- as.data.frame(matrix(c(100.25600, 100.25600, 160.51200, 100.25600, 200.25600, 100.25600, 200.25600, 200.25600, 100.51200, 100.25600, 200.25600, 100.25600,
                             1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0,
                             24.3, 16.3, 10.2, 24.3, 16.0, 24.3, 16.0, 16.0, 24.2, 16.84, 16.0, 24.3,
                             2499, 1739, 10199, 1599, 2499, 4999, 3849, 2449, 4399, 1699, 2499, 3495), 12, 4))
labels <- c("1", "2", "3", "4","5")
result <- c(1, 4, 5, 4, 3, 4, 1, 2, 3, 2, 3, 2)
factors <- factor(result, labels)
df <- cbind(df, factors)
colnames(df) <- c("ZakresCzułości", "Obiektyw", "Rozdzielczość", "Cena", "Rank")

stripchart <- ggplot(df, aes(Rozdzielczość, Cena, col = factor(Rank))) + geom_jitter(position = position_jitter(width = 0.2), size=12)
stripchart <- stripchart + ylab("Cena") + xlab("Width") + labs(colour = "Rank")
stripchart <- stripchart + ggtitle("Ceny aparatów i Ranking") + theme(plot.title = element_text(vjust =+ 2))
stripchart
