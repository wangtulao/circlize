\name{chordDiagramFromMatrix}
\alias{chordDiagramFromMatrix}
\title{
Plot Chord Diagram from a matrix
}
\description{
Plot Chord Diagram from a matrix
}
\usage{
chordDiagramFromMatrix(mat, grid.col = NULL, grid.border = NA, transparency = 0.5,
    col = NULL, row.col = NULL, column.col = NULL, order = NULL, directional = 0,
    direction.type = "diffHeight", diffHeight = 0.04, reduce = 1e-5, self.link = 2,
    symmetric = FALSE, keep.diagonal = FALSE, preAllocateTracks = NULL,
    annotationTrack = c("name", "grid", "axis"), annotationTrackHeight = c(0.05, 0.05),
    link.border = NA, link.lwd = par("lwd"), link.lty = par("lty"),
    link.sort = FALSE, link.decreasing = TRUE,
    link.arr.length = ifelse(link.arr.type == "big.arrow", 0.02, 0.4),
    link.arr.width = link.arr.length/2,
    link.arr.type = "triangle", link.arr.lty = par("lty"),
    link.arr.lwd = par("lwd"), link.arr.col = par("col"), ...)
}
\arguments{

  \item{mat}{A table which represents as a numeric matrix.
  \item{grid.col}{Grid colors which correspond to matrix rows/columns (or sectors). The length of the vector should be either 1 or \code{length(union(rownames(mat), colnames(mat)))}.
  \item{grid.border}{border for grids. If it is \code{NULL}, the border color is same as grid color
  \item{transparency}{Transparency of link colors, 0 means no transparency and 1 means full transparency.
  \item{col}{Colors for links. It can be a matrix which corresponds to \code{mat}, or a function which generate colors 
  \item{row.col}{Colors for links. Links from the same row in \code{mat} will have the same color.
  \item{column.col}{Colors for links. Links from the same column in \code{mat} will have the same color.
  \item{order}{Order of sectors. Default order is \code{union(df[[1]], df[[2]])}.
  \item{directional}{Whether links have directions. 1 means the direction is from the first column in \code{df} to the second column, -1
  \item{direction.type}{type for representing directions. Can be one or two values in "diffHeight" and "arrows". If the value contains "diffHeight",
  \item{diffHeight}{The difference of height between two 'roots' if \code{directional} is set to \code{TRUE}. If the value is set to
  \item{reduce}{if the ratio of the width of certain grid compared to the whole circle is less than this value, the grid is removed on the plot.
  \item{self.link}{if there is a self link in one sector, 1 means the link will be degenerated as a 'mountain' and the width corresponds to the value for this connection.
  \item{symmetric}{Whether the matrix is symmetric. If the value is set to \code{TRUE}, only
  \item{keep.diagonal}{If the matrix is specified as symmetric, whether keep diagonal for visualization.
  \item{preAllocateTracks}{Pre-allocate empty tracks before drawing Chord diagram. It can be a single number indicating
  \item{annotationTrack}{Which annotation track should be plotted? By default, a track containing sector names and a track
  \item{annotationTrackHeight}{Track height corresponding to values in \code{annotationTrack}.
  \item{link.border}{border for links, single scalar or a matrix with names or a data frame with three columns
  \item{link.lwd}{width for link borders, single scalar or a matrix with names or a data frame with three columns
  \item{link.lty}{style for link borders, single scalar or a matrix with names or a data frame with three columns
  \item{link.sort}{whether sort links on every sector based on the width of the links on it.
  \item{link.decreasing}{for \code{link.sort}
  \item{link.arr.length}{pass to \code{\link{circos.link}}, same settings as \code{link.lwd}.
  \item{link.arr.width}{pass to \code{\link[shape]{Arrowhead}}, same settings as \code{link.lwd}.
  \item{link.arr.type}{pass to \code{\link{circos.link}}, same settings as \code{link.lwd}. Default value is \code{triangle}.
  \item{link.arr.col}{color or the single line link which is put in the center of the belt, same settings as \code{link.lwd}.
  \item{link.arr.lwd}{line width ofthe single line link which is put in the center of the belt, same settings as \code{link.lwd}.
  \item{link.arr.lty}{line type of the single line link which is put in the center of the belt, same settings as \code{link.lwd}.
  \item{...}{pass to \code{\link{circos.link}}

}
\details{
Internally, the matrix is transformed to a data frame and sent to \code{\link{chordDiagramFromDataFrame}}.
}