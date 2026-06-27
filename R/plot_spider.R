#' Plot spider plot
#'
#' @param x the result of MCDA scores
#' @param colors the color scheme of choice
#' @param ... further arguments passed to or from other methods
#'
#' @return the spider plot
#' @importFrom grDevices palette
#' @importFrom fmsb radarchart
#' @importFrom graphics legend
#' @export
plot.spider <- function(x, colors=palette("default"), ...){

  data <- as.data.frame(x)
  rownames(data)->criteria
  data <- rbind(rep(1, ncol(data)), rep(0, ncol(data)), data)

  radarchart(data,
             axistype = 2,
             pcol=colors,
             cglcol="grey", cglty=1, axislabcol="grey", caxislabels=seq(0,20,5), cglwd=0.3,
             plwd = 2,
             plty = 1,
             title = "Spider Chart")

  legend(x = "topright",
         legend = criteria,
         col = colors,
         pch = 15,
         bty = "n")
}
