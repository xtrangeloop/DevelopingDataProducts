library(leaflet)
library(leaflet.extras)

##The data used came from:
##HFI Data: https://www.cato.org/human-freedom-index-new
##Map Data: https://worldmap.harvard.edu/data/geonode:country_centroids_az8
##Help: http://rstudio-pubs-static.s3.amazonaws.com/58323_1911658f7b8841f1b14b349b3804540d.html

HFI <- read.csv("HFI.csv")

HFI$hf_score <- as.numeric(HFI$hf_score*100)
HFI$hf_rank <- as.numeric(HFI$hf_rank*100)

HFImap <- leaflet(data=HFI) %>%
  addControl(html="<h1>October 6, 2019</h1>") %>%
  addProviderTiles(providers$Stamen.Watercolor)  %>%
  addHeatmap(lng = HFI$Longitude, lat = HFI$Latitude, radius=10)
HFImap


