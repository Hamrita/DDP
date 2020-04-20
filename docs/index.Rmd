---
title: ''
author: ""
date: "20/04/2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = F)
library(leaflet)
```

```{r}
fsegIcon <- makeIcon(
  iconUrl = "logo.jpg",
  iconWidth = 31*215/230, iconHeight = 31,
  iconAnchorX = 31*215/230/2, iconAnchorY = 16)
fsegSite="<a href='http://www.fsegso.rnu.tn/'>FSEG Sousse</a>"
fsegLong <- data.frame(
  lat =35.868932,
  lng = 10.5269353)
fsegLong %>% 
  leaflet() %>%
  addTiles() %>%
  addMarkers(icon = fsegIcon, popup = fsegSite)

```

