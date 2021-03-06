% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_slope.R
\name{plot_slope}
\alias{plot_slope}
\title{Plot slope data for a 3d linestring with base R graphics}
\usage{
plot_slope(
  routes,
  lonlat = sf::st_is_longlat(routes),
  fill = TRUE,
  horiz = FALSE,
  p = ifelse(test = requireNamespace("colorspace", quietly = TRUE),
    colorspace::diverging_hcl, grDevices::terrain.colors),
  ...,
  x = "top",
  col = "black",
  cex = 0.9,
  bg = grDevices::rgb(1, 1, 1, 0.8),
  title = "Slope colors (percentage gradient)",
  s = 3:18,
  ncol = 4
)
}
\arguments{
\item{routes}{Routes, the gradients of which are to be calculated.
The object must be of class \code{sf} with \code{LINESTRING} geometries.}

\item{lonlat}{Are the coordinates in lon/lat (geographic) coordinates?
Set this to \code{FALSE} if you have projected data, e.g. with coordinates
representing distance in meters, not degrees. Lonlat coodinates are assumed
(\code{lonlat = TRUE}) is the default. In \code{slope_raster()} and \code{plot_slope()}
it is taken from the CRS of the routes (\code{sf::st_is_longlat(routes)}).}

\item{fill}{Should the profile be filled? \code{TRUE} by default}

\item{horiz}{Should the legend be horizontal (\code{FALSE} by default)}

\item{p}{Color palette to use}

\item{...}{Additional parameters to pass to legend}

\item{x}{Keyword, one of "bottomright", "bottom",
"bottomleft", "left", "topleft", "top", "topright", "right" and "center"}

\item{col}{Line colour}

\item{cex}{Legend size}

\item{bg}{Legend background colour}

\item{title}{Title of the legend}

\item{s}{Sequence of numbers to show in legend}

\item{ncol}{Number of columns in legend}
}
\description{
Plot slope data for a 3d linestring with base R graphics
}
\examples{
plot_slope(lisbon_route_3d)
routes = lisbon_road_segment_3d
plot_slope(routes)
routes = lisbon_road_segment_3d
}
