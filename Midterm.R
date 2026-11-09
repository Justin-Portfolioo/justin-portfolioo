#install.packages("leaflet")
library(leaflet)

arenas <- data.frame(
  team = c(
    "Philadelphia Flyers",
    "Pittsburgh Penguins",
    "New York Rangers"
    ),
  arena = c(
    "Xfinity Mobile Arena",
    "PPG Paints Arena",
    "Madison Square Garden"
    ),
  latitude = c(39.9011, 40.439445, 40.75056), 
  longitude = c(-75.1719, -79.989891, -73.9936)
)
arenas

leaflet(data = arenas) %>%
  addTiles() %>%
  addMarkers(
    lng = ~longitude,
    lat = ~latitude,
    popup = ~paste0(team,"<br>", arena)
  )

leaflet(data = arenas) %>%
  addTiles() %>%
  addCircleMarkers(
    lng = ~longitude,
    lat = ~latitude,
    radius = 6,
    color = 'black',
    fillOpacity = '1',
    popup = ~paste0(team,"<br>", arena)
  )
