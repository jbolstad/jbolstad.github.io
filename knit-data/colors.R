# ggplot theme and palettes used when knitting posts.
library(RColorBrewer)
library(ggplot2)

th <- theme_gray() + theme(
  panel.border = element_rect(fill = NA, color = "gray80"),
  panel.background = element_rect(fill = "gray96"),
  panel.grid.major = element_line(color = "gray90"),
  panel.grid.minor = element_line(color = "gray90"),
  strip.background = element_rect(fill = "gray90", color = "gray80"),
  strip.text = element_text(size = 11),
  legend.text = element_text(size = 11)
)
theme_set(th)

n <- 9
col.solid <- matrix(nrow = 4, ncol = n)
col.solid[1, ] <- brewer.pal(n, name = "Reds")
col.solid[2, ] <- brewer.pal(n, name = "Blues")
col.solid[3, ] <- brewer.pal(n, name = "Greens")
col.solid[4, ] <- brewer.pal(n, name = "YlOrBr")
col.trans <- matrix(
  rgb(t(col2rgb(col.solid, alpha = FALSE)), alpha = 100, maxColorValue = 255),
  nrow = 4
)
