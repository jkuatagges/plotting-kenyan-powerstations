
library(sf)
powerPlants = st_read("E:/AGGES Presentation/Kenya Power Plants/Kenya Power Plants.shp")
cts <- st_read("E:/AGGES Presentation/counties/Counties.shp")
library(rworldmap)
newmap = getMap(resolution = "low")

png("D:/kenya_powerplants.png", width = 350, height = 350)
plot(newmap, xlim = c(37.4,37.5), ylim = c(-4.5, 5), asp = 1)
#plot(cts)
plot(newmap, xlim = c(37.4,37.5), ylim = c(-4.5, 5), asp = 1)
points(powerPlants$LON, powerPlants$LAT, col = "red", cex = 0.5, pch = 20)
title("Powerplants - Kenya", line = T)
dev.off()