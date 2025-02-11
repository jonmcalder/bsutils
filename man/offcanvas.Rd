% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/offcanvas.R
\name{offcanvas}
\alias{offcanvas}
\alias{offcanvas.offcanvasTrigger}
\title{Offcanvas}
\usage{
offcanvas(trigger, content)

\method{offcanvas}{offcanvasTrigger}(trigger, content)
}
\arguments{
\item{trigger}{A \code{\link[=collapseButton]{collapseButton()}} or \code{\link[=collapseLink]{collapseLink()}}.}

\item{content}{The offcanvas content as returned by
\code{\link[=offcanvasContent]{offcanvasContent()}}.}
}
\description{
Create an offcanvas element.
}
\section{Methods (by class)}{
\itemize{
\item \code{offcanvasTrigger}: Offcanvas Wrapper
}}

\examples{
library(shiny)

ui <- fluidPage(
  theme = bslib::bs_theme(version = 5L),
  offcanvas(
    offcanvasButton(
      "Open"
    ),
    offcanvasContent(
      offcanvasHeader(
        "Off canvas"
      ),
      p(
        "Hello world"
      )
    )
  )
)

server <- \(input, output, session){

}

if(interactive())
 shinyApp(ui, server)

}
