#' Sigmaplot styled theme for Ggplot2
#' @importFrom ggplot2 %+replace%
#' @param base_size changes the base font size of text
#'
#' @return a sigmaplot styled ggplot2 object
#' @export
#'
#' @examples
#' plot <- ggplot(mpg, aes(displ, hwy)) + geom_point()
#' plot + theme_sigmaplot()

theme_sigmaplot <- function(base_size = 16){

  ggplot2::theme_classic(base_size = base_size) %+replace%
    ggplot2::theme(
      aspect.ratio = 0.7,
      axis.line = ggplot2::element_line(lineend = "round"),
      axis.ticks = ggplot2::element_line(lineend = "round", color = "black"),
      axis.text = ggplot2::element_text(size = base_size,
                               color = "black",
                               face = "bold"),
      axis.title.x = ggplot2::element_text(face = "bold",
                                  margin = ggplot2::margin(t = base_size*0.625,
                                                  unit = "pt")),
      axis.title.y = ggplot2::element_text(face = "bold",
                                  margin = ggplot2::margin(r = base_size*0.625,
                                                  unit = "pt"),
                                  angle = 90),
      legend.background = ggplot2::element_blank(),
      legend.title = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(size = base_size,
                                 color = "black",
                                 face = "bold"))
}
