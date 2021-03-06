% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diseaseVIZ.R
\name{diseaseVIZ}
\alias{diseaseVIZ}
\title{Creates a plot/table of diseaseSIM() results}
\usage{
diseaseVIZ(
  data,
  type = "plot",
  title = "diseaseSIM results",
  aspect_ratio = 1,
  label = FALSE,
  xlim = NULL,
  ylim = NULL
)
}
\arguments{
\item{data}{Data to be plotted, this object should be the output from
diseaseSIM().}

\item{type}{String from "plot", "gradient", "summary_table", or "strat_table".}

\item{title}{Title for the plot that is output.}

\item{aspect_ratio}{Aspect ratio, defaults to 1.}

\item{label}{Logical, label the origin and specified final destination?}

\item{xlim}{Optionally specify desired x limits as a numeric vector: c(low,hi)}

\item{ylim}{Optionally specify desired y limits as a numeric vector: c(low,hi)}
}
\description{
When type="plot", function plots the movement tracks versus the the straight
line track between the origin and destination (unless the destination was
unspecified in the call to diseaseSIM(), then straight line track is omitted).
When type="gradient", creates a gradient plot showing what regions cause
agents to gain/lose energy. Two table  options are also available using
type="summary_table" or type="strat_table" (table with results stratified
by energy gain or loss). Please see Vignette for examples of this output.
}
\examples{
1. Run diseaseSIM()

EX1 <- diseaseSIM(replicates=15,days=27,env_rast=ndvi_raster, 
search_radius=400,
sigma=.1, dest_x=999, dest_y=999, mot_x=.9, mot_y=.9,
modeled_species=pabu.pop.new, optimum_lo=.6,optimum_hi=.8,init_energy=100, 
direction="S",write_results=TRUE,single_rast=FALSE,mortality = TRUE,
energy_adj=c(30,25,20,5,0,-5,-5,-10,-20,-25,-30),disease_loc=disease_points,
disease_energy_interact = 60, disease_mortality=.5,disease_radius=300)

2. Run diseaseVIZ() on your result

diseaseVIZ(EX1,title="Visualizing diseaseSIM results",type="plot", aspect_ratio=5/3,
label=TRUE)

diseaseVIZ(EX1,type="summary_table")

diseaseVIZ(EX1,type="strat_table")

diseaseVIZ(EX1,type="gradient")
}
