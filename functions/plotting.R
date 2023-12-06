plot_culmen <- function (culmen_data){
  culmen_data %>%
    ggplot(aes(x= culmen_length_mm,y = culmen_depth_mm))+
  geom_point(aes(color=species)) +
  geom_smooth(method = "lm", color = "black", linewidth = 0.8)+
  labs (x= "Culmen Length (mm)", y = "Culmen Depth (mm)", title="Culmen Length vs Depth of Palmer Penguins", caption = "Grey Shaded Area indicates 95% CI")+
  theme_bw()
}


save_culmen_plot_svg <- function(culmen_data, filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width = size_inches,
          height = size_inches,
          scaling = scaling)
  results_figure <- plot_culmen(culmen_data)
  print(results_figure)
  dev.off
}