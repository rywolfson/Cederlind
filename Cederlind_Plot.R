
library(tidyverse)
library(ggplot2)

#Creating Rapsodo/Trackman-like Movement Plot for Blake Cederlind

CederlindPlot <- ggplot(data = Cederlind) +
  geom_point(mapping = aes(x = pfx_x, y = pfx_z, shape = pitch_type, color = pitch_type, size = release_speed)) +
  coord_cartesian(xlim = c(-2, 2), ylim = c(-1, 1.25)) +
  xlab("Horizontal Movement") +
  ylab("Vertical Movement") +
  ggtitle("Blake Cederlind 2020 MLB Movement")

#Creating Plot of Pitch Location
CederlindLocation <- ggplot(data = Cederlind) +
  geom_point (mapping=aes(x=plate_x, y=plate_z, shape = pitch_type, color = pitch_type)) +
  coord_cartesian(xlim = c(-3.5, 3.5), ylim = c(0,4)) +
  geom_rect(aes(xmin=-.83, xmax=.83, ymin=1, ymax=4), fill = NA, color = "black") +
  ggtitle("Blake Cederlind 2020 Pitches from Catcher's Perspective") +
  xlab("Horizontal Location") +
  ylab("Vertical Location")

#Printing Plots
print(CederlindPlot)
print(CederlindLocation)