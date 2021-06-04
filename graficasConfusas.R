require(stats)
library(dplyr)
library(ggplot2)
library(corrplot)

ytmx <- read.csv('./src/MX_youtube_trending_data_fixed.csv')

# GRAFICA CONFUSA 01
categoryByComentDisabled <- table(ytmx$category,ytmx$comments_disabled,dnn=c("category","comments_disabled"))
mosaicplot(categoryByComentDisabled,main="DEPENDENCIA ENTRE 2 VARIABLES CUALITATIVAS",col=c('green','orange'))

# GRÁFICA CONFUSA 02
ggplot(data=ytmx,aes(x=category,y=dislikes,color=category))+geom_boxplot()+theme_bw()

# GRÁFICA CONFUSA 03
ggplot(data=ytmx,aes(x=category,y=view_count,color=category))+geom_boxplot()+theme_bw()

# GRÁFICA CONFUSA 04
ggplot(data=ytmx,aes(x=category,y=likes,color=category))+geom_boxplot()+theme_bw()


