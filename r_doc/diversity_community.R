library("entropart")

load("../data/buruliflora.RData")
ls()


# faire un vecteur de integer pour avoir le nombre d'espece par site
faib.kongodekro.1.esp.nb <- aggregate(faib.kongodekro.1$nombre, by=list(codeesp=faib.kongodekro.1$codeesp), FUN=sum) 
faib.kongodekro.2.esp.nb <- aggregate(faib.kongodekro.2$nombre, by=list(codeesp=faib.kongodekro.2$codeesp), FUN=sum)

faib.zebra.1.esp.nb <- aggregate(faib.zebra.1$nombre, by=list(codeesp=faib.zebra.1$codeesp), FUN=sum) 
faib.zebra.2.esp.nb <- aggregate(faib.zebra.2$nombre, by=list(codeesp=faib.zebra.2$codeesp), FUN=sum) 

fort.bateguedia.1.esp.nb <- aggregate(fort.bateguedia.1$nombre, by=list(codeesp=fort.bateguedia.1$codeesp), FUN=sum) 
fort.bateguedia.2.esp.nb <- aggregate(fort.bateguedia.2$nombre, by=list(codeesp=fort.bateguedia.2$codeesp), FUN=sum)

fort.konankro.1.esp.nb <- aggregate(fort.konankro.1$nombre, by=list(codeesp=fort.konankro.1$codeesp), FUN=sum) 
fort.konankro.2.esp.nb <- aggregate(fort.konankro.2$nombre, by=list(codeesp=fort.konankro.2$codeesp), FUN=sum)

#Créer le vecteur numérique
faib.kongo.1 = c(faib.kongodekro.1.esp.nb$x)%>% set_names(c(faib.kongodekro.1.esp.nb$codeesp))
faib.kongo.2 = c(faib.kongodekro.2.esp.nb$x)%>% set_names(c(faib.kongodekro.2.esp.nb$codeesp))

faib.zebra.1 = c(faib.zebra.1.esp.nb$x)%>% set_names(c(faib.zebra.1.esp.nb$codeesp))
faib.zebra.2 = c(faib.zebra.2.esp.nb$x)%>% set_names(c(faib.zebra.2.esp.nb$codeesp))

fort.bateg.1 = c(fort.bateguedia.1.esp.nb$x)%>% set_names(c(fort.bateguedia.1.esp.nb$codeesp))
fort.bateg.2 = c(fort.bateguedia.2.esp.nb$x)%>% set_names(c(fort.bateguedia.2.esp.nb$codeesp))

fort.konank.1 = c(fort.konankro.1.esp.nb$x)%>% set_names(c(fort.konankro.1.esp.nb$codeesp))
fort.konank.2 = c(fort.konankro.2.esp.nb$x)%>% set_names(c(fort.konankro.2.esp.nb$codeesp))


# Profile de diversité pour le site faib.kongo.1

Abd_kogo1 <- as.AbdVector(faib.kongo.1)
autoplot(Abd_kogo1, Distribution="lnorm")
# Profile de diversité pour le site faib.kongo.2
Abd_kogo2 <- as.AbdVector(faib.kongo.2)
autoplot(Abd_kogo1, Distribution="lnorm")

# Profile de diversité pour le site faib.kongo.1
Abd_zeb1 <- as.AbdVector(faib.zebra.1)
autoplot(Abd_zeb1, Distribution="lnorm")
# Profile de diversité pour le site faib.kongo.1
Abd_zeb2 <- as.AbdVector(faib.zebra.2)
autoplot(Abd_zeb2, Distribution="lnorm")

# Profile de diversité pour le site faib.kongo.1
Abd_bat1 <- as.AbdVector(fort.bateg.1)
autoplot(Abd_bat1, Distribution="lnorm")
# Profile de diversité pour le site faib.kongo.1
Abd_bat2 <- as.AbdVector(fort.bateg.1)
autoplot(Abd_bat2, Distribution="lnorm")


# Profile de diversité pour le site faib.kongo.1
Abd_kon1 <- as.AbdVector(fort.konank.2)
autoplot(Abd_bat2, Distribution="lnorm")
# Profile de diversité pour le site faib.kongo.1
Abd_kon2 <- as.AbdVector(fort.konank.2)
autoplot(Abd_bat2, Distribution="lnorm")




# probability vectors, summing to 1:
Pbbkogo1 <- as.ProbaVector(faib.kongo.1)

# Profile de diversité pour le site faib.kongo.2
Pbbkogo2 <- as.ProbaVector(faib.kongo.2)


# Profile de diversité pour le site faib.kongo.1
Pbbzeb1 <- as.ProbaVector(faib.zebra.1)

# Profile de diversité pour le site faib.kongo.1
Pbbzeb2 <- as.ProbaVector(faib.zebra.2)


# Profile de diversité pour le site faib.kongo.1
Pbbbat1 <- as.ProbaVector(fort.bateg.1)

# Profile de diversité pour le site faib.kongo.1
Pbbbat2 <- as.ProbaVector(fort.bateg.1)



# Profile de diversité pour le site faib.kongo.1
Pbbkon1 <- as.ProbaVector(fort.konank.2)

# Profile de diversité pour le site faib.kongo.1
Pbbkon2 <- as.ProbaVector(fort.konank.2)



# Richness
Richness(Pbbkogo1)

Richness(Abd_kogo1)

Shannon(Abd_kogo1)

Simpson(Abd_kogo1)

# respectively 𝑞=0,1,2
# q=0,1,2 for richness, Shannon, Simpson

Tsallis(Abd_kogo1, q=2)

Diversity(Abd_kogo1, q=1)

(d2 <- Diversity(Abd_kogo1,q=2))

lnq(d2, q=2)

(e2 <-Tsallis(Abd18,q=2))

expq(e2, q=2)


DP <- CommunityProfile(Diversity, Abd18)
autoplot(DP)



# Meta-community data
load(file = "../data/dtf_art.RData")

load(file ="/Volumes/USER-1/Projets/GitHub/article_buruli/data/dtf_art.RData")

# dtf.art
# names(dtf.art)
# library(dplyr)
# 
# tapply(list(dtf.art$codeesp, dtf.art$site), sum)
# 
# tab_ub<- data.frame(dtf.art$codeesp, dtf.art$site)
# 
# 
# x = data.frame(dtf.art$codeesp, dtf.art$site)
# source("http://pcwww.liv.ac.uk/~william/R/crosstab.r")
# df <-crosstab(x, row.vars = "dtf.art.codeesp", col.vars = "dtf.art.site")



MyTable <- table(dtf.art$codeesp, dtf.art$site)
dtf_ub_com <- as.data.frame.matrix(MyTable)
# https://www.r-bloggers.com/2012/03/how-to-convert-contingency-tables-to-data-frames-with-r/
w <- c(1, 2, 1, 1, 2, 2, 1, 1)

MC <- MetaCommunity(Abundances = dtf_ub_com, Weights = w)
plot(MC)



# Diversity estimation
p <- DivPart(q = 1, MC = Paracou618.MC)
summary(p)


# Create a metacommunity object
# https://www.rdocumentation.org/packages/entropart/versions/1.6-8/topics/MetaCommunity
# https://cran.r-project.org/web/packages/rdiversity/readme/README.html

# library(vegan)
# data(BCI)
# BCI.df <- as.data.frame(t(BCI))
# class(BCI.df)
# 
library(entropart)
# MC <- MetaCommunity(BCI.df)

# convert my datafram into MC
# ici, toutes les espèces ont le même poids donc on prend 1
# https://rdrr.io/cran/entropart/man/MetaCommunity.html
library(entropart)
dtf_ub_com_MC <- MetaCommunity(dtf_ub_com)


p <- DivPart(q = 1, MC = dtf_ub_com_MC)
summary(p)


de <- DivEst(q = 1, dtf_ub_com_MC, Simulations = 50)

# Margin adjustment required for this vignette html output
par(mar=c(1,1,2.2,1))
plot(de)


# Estimate diversity.
Profile <- DivProfile(q.seq = seq(0, 1, 0.1), dtf_ub_com_MC, Biased = FALSE)
plot(Profile)

summary(Profile$Correction)
autoplot(Profile)
summary(Profile)

summary(lst)


Profile <- DivProfile(q.seq = seq(0, 2, 0.1), Paracou618.MC, Biased = FALSE )
plot(Profile)

summary(Profile$Correction)


View(Paracou618.MC)

nrow(Paracou618.MC[["Nsi"]])
