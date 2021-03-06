% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/slopes.R
\name{slope_matrix}
\alias{slope_matrix}
\alias{slope_matrix_weighted}
\title{Calculate the gradient of line segments from a 3D matrix of coordinates}
\usage{
slope_matrix(m, elevations = m[, 3], lonlat = TRUE)

slope_matrix_weighted(m, elevations = m[, 3], lonlat = TRUE)
}
\arguments{
\item{m}{Matrix containing coordinates and elevations}

\item{elevations}{Elevations in same units as x (assumed to be metres)}

\item{lonlat}{Are the coordinates in lon/lat (geographic) coordinates?
Set this to \code{FALSE} if you have projected data, e.g. with coordinates
representing distance in meters, not degrees. Lonlat coodinates are assumed
(\code{lonlat = TRUE}) is the default. In \code{slope_raster()} and \code{plot_slope()}
it is taken from the CRS of the routes (\code{sf::st_is_longlat(routes)}).}
}
\description{
Calculate the gradient of line segments from a 3D matrix of coordinates
}
\examples{
x = c(0, 2, 3, 4, 5, 9)
y = c(0, 0, 0, 0, 0, 9)
z = c(1, 2, 2, 4, 3, 1) / 10
m = cbind(x, y, z)
plot(x, z, ylim = c(-0.5, 0.5), type = "l")
(gx = slope_vector(x, z))
(gxy = slope_matrix(m, lonlat = FALSE))
abline(h = 0, lty = 2)
points(x[-length(x)], gx, col = "red")
points(x[-length(x)], gxy, col = "blue")
title("Distance (in x coordinates) elevation profile",
  sub = "Points show calculated gradients of subsequent lines")
}
