# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

theme_sigmaplot <- function(base_size = 16){

  ggplot2::theme_classic(base_size = base_size) %+replace%
    ggplot2::theme(
      aspect.ratio = 0.7,
      axis.line = element_line(lineend = "round"),
      axis.ticks = element_line(lineend = "round", color = "black"),
      axis.text = element_text(size = base_size,
                               color = "black",
                               face = "bold"),
      axis.title.x = element_text(face = "bold",
                                  margin = margin(t = base_size*0.625,
                                                  unit = "pt")),
      axis.title.y = element_text(face = "bold",
                                  margin = margin(r = base_size*0.625,
                                                  unit = "pt"),
                                  angle = 90),
      legend.background = element_blank(),
      legend.title = element_blank(),
      legend.text = element_text(size = base_size,
                                 color = "black",
                                 face = "bold"))
}
