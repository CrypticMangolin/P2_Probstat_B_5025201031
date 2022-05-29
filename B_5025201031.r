install.packages("BSDA")
install.packages("ggplot2")
install.packages("multcompView")

library(BSDA)
library(ggplot2)
library(multcompView)

#No.1
Responden = c(1:9)
X = c(78,75,67,77,70,72,78,74,77)
Y = c(100,95,70,90,90,90,89,90,100)
df <- data.frame(Responden, X, Y)

#1.a
diff <- df$X-df$Y
standardev = sd(diff)
standardev

#1.b
dbar = mean(diff)
mu = 0
n = 9

t = (dbar - mu)/(standardev/sqrt(n))
pval = 2*pt(-abs(t), df=n-1)
pval


#1.c
t.test(df$X, df$Y, alternative = "two.sided", mu=0, 
       paired = TRUE)

#No.2
zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100, 
          alternative = "greater", mu = 20000)

#No.3
Bandung.n<-19
Bandung.mean<-3.64
Bandung.S<-1.67

Bali.n<-27
Bali.mean<-2.79
Bali.S<-1.32

dof <- 2
#3.A: H0 dan H1
#H0: mean(Bandung) <= mean(Bali)
#H1: mean(Bandung)  > mean(Bali)

#3.B
Bandung <- ((dof+1) * Bandung.n) / (dof + 1 + Bandung.n - 1)
Bandung

Bali <- ((dof+1) * Bali.n) / (dof + 1 + Bali.n - 1)
Bali

#3.C
tsum.test(mean.x=Bandung.mean, s.x=Bandung.S, n.x=Bandung.n, 
          mean.y=Bali.mean, s.y=Bali.S, n.y=Bali.n,
          alternative = "greater", mu = 0,
          var.equal = TRUE, conf.level = 0.95)

#3.D
tcrit=qt(p=.05, df=2, lower.tail=FALSE)

#No.4
data  <- read.delim(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt")) 
head(data)

#4.A
data$Group = factor(data$Group, labels = c("Kucing Oren","Kucing Hitam","Kucing Putih"))

grup1 <- subset(data, Group == "Kucing Oren")
grup2 <- subset(data, Group == "Kucing Hitam")
grup3 <- subset(data, Group == "Kucing Putih")

qqnorm(grup1$Length, main = "Plot Q-Q Kucing Oren")
qqline(grup1$Length)

qqnorm(grup2$Length, main = "Plot Q-Q Kucing Hitam")
qqline(grup2$Length)

qqnorm(grup3$Length, main = "Plot Q-Q Kucing Putih")
qqline(grup3$Length)

#4.B
bartlett.test(Length ~ Group, data = data)

#4.C
model <- lm(Length ~ Group, data = data)
anova(model)

plot(model, main = "Model 1")

#4.E
TukeyHSD(aov(Length ~ factor(Group), data = data))

#4.F
ggboxplot(data, x = "Group", y = "Length",
          color = "Group", palette = c("#FFA500", "#000000", "#00AFBB"),
          ylab = "Weight", xlab = "Group")

#No.5
GTL  <- read.csv(url("https://drive.google.com/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download")) 
head(GTL)

#5.A
qplot(x = Temp, y = Light, geom = "point",
      data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

#5.B
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
anova <- aov(Light ~ Glass*Temp_Factor,
             data = GTL)
summary(anova)

#5.C
summary.table <- group_by(GTL, Glass, Temp) 
%>%
  summarise(
    mean = mean(Light), 
    sd = sd(Light)) 
%>%
  arrange(desc(mean))

print(summary.table)

#5.D
anova <- aov(Light ~ Glass*Temp_Factor,
             data = GTL)
print(TukeyHSD(anova))
