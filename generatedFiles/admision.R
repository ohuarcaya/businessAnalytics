require(MASS)
admision <- read.csv("LAB_REG_admit2.csv")
head(admision)
str(admision)
admision$admit <- factor(admision$admit)
sapply (admision, class)

# Estimacion
admision.modelA <- glm(admision$admit~admision$read + admision$write, family=binomial, data=admision)
summary(admision.modelA)


# Estimacion
admision.modelB <- glm(admision$admit~admision$math + admision$science
                       + admision$ses + admision$gender, family=binomial, data=admision)
summary(admision.modelB)

