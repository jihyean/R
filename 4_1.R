library(ggmap)
library(ggplot2)
register_google(key = 'AIzaSyDJLDZcXuPhp5B24Jld9BieIGuixAd1BpU')

names <- c("동서울대 1호관")
addr <- c("성남시 수정구 복정로 76")
gc <- geocode(enc2utf8(addr))
gc

df <- data.frame(name=names,
                 lon=gc$lon,
                 lat=gc$lat)
df

cen <- c(mean(df$lon), mean(df$lat))
map <- get_googlemap(center = cen,
                     zoom = 18,
                     size = c(640, 640),
                     maptype = "roadmap",
                     marker=gc)
ggmap(map)

gmap <- ggmap(map)
gmap+geom_text(data = df,
               aes(x=lon, y=lat),
               size=5,
               label=df$name)