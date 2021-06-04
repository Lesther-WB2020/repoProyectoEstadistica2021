require(stats)
library(dplyr)
library(ggplot2)
library(corrplot)

ytmx <- read.csv('./src/MX_youtube_trending_data_fixed.csv')
county <- read.csv('./src/president_county_candidate.csv')

# GRAFICA CONFUSA 01
categoryByComentDisabled <- table(ytmx$category,ytmx$comments_disabled,dnn=c("category","comments_disabled"))
mosaicplot(categoryByComentDisabled,main="DEPENDENCIA ENTRE 2 VARIABLES CUALITATIVAS",col=c('green','orange'))

# GRÁFICA CONFUSA 02
ggplot(data=ytmx,aes(x=category,y=dislikes,color=category))+geom_boxplot()+theme_bw()

# GRÁFICA CONFUSA 03
ggplot(data=ytmx,aes(x=category,y=view_count,color=category))+geom_boxplot()+theme_bw()

# GRÁFICA CONFUSA 05
ggplot(data=ytmx,aes(x=category,y=likes,color=category))+geom_boxplot()+theme_bw()


# GRÁFICA CONFUSA 16
ggplot(data=county,aes(x=candidate,y=total_votes,color=candidate))+geom_boxplot()+theme_bw()

# GRÁFICA CONFUSA 17
ggplot(data=county,aes(x=party,y=total_votes,color=party))+geom_boxplot()+theme_bw()

# GRÁFICA CONFUSA 18
votesByParty <- table(county$party,county$won, dnn = c("PARTIDO","GANÓ"))
mosaicplot(votesByParty, main="DEPENDENCIA ENTRE VARIABLES
CUALITATIVAS", col=c("green","orange"))
