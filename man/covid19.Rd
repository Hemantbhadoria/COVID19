% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/covid19.R
\name{covid19}
\alias{covid19}
\title{Coronavirus COVID-19 (2019-nCoV) Epidemic Datasets}
\source{
\href{https://github.com/covid19datahub/COVID19#data-sources}{Data sources}
}
\usage{
covid19(
  ISO = NULL,
  level = 1,
  start = "2019-01-01",
  end = Sys.Date(),
  vintage = FALSE,
  raw = FALSE,
  cache = TRUE
)
}
\arguments{
\item{ISO}{vector of ISO codes to retrieve (alpha-2, alpha-3 or numeric). Each country is identified by one of its \href{https://github.com/covid19datahub/COVID19/blob/master/inst/extdata/db/ISO.csv}{ISO codes}}

\item{level}{integer. Granularity level. 1: country-level data. 2: state-level data. 3: city-level data.}

\item{start}{the start date of the period of interest.}

\item{end}{the end date of the period of interest.}

\item{vintage}{logical. Retrieve the snapshot of the dataset at the \code{end} date instead of using the latest version? Default \code{FALSE}.}

\item{raw}{logical. Skip data cleaning? Default \code{FALSE}. See details.}

\item{cache}{logical. Memory caching? Significantly improves performance on successive calls. Default \code{TRUE}.}
}
\value{
\href{https://github.com/covid19datahub/COVID19#dataset}{Grouped \code{tibble} (\code{data.frame})}
}
\description{
Unified tidy format datasets of the 2019 Novel Coronavirus COVID-19 (2019-nCoV) epidemic across several sources.
The data are downloaded in real-time, cleaned and matched with exogenous variables.
Vintage databases are also supported.
}
\details{
\href{https://github.com/covid19datahub/COVID19}{Collection methodology and details}
}
\note{
We have invested a lot of time and effort in creating \href{https://covid19datahub.io}{COVID-19 Data Hub}. We expect you to agree to the following rules when using it:

\itemize{
\item cite Guidotti and Ardia (2020) in working papers and published papers that use \href{https://covid19datahub.io}{COVID-19 Data Hub}
\item place the URL \url{https://covid19datahub.io} in a footnote to help others find \href{https://covid19datahub.io}{COVID-19 Data Hub}
\item you assume full risk for the use of \href{https://covid19datahub.io}{COVID-19 Data Hub}
}

The \href{https://covid19datahub.io}{COVID-19 Data Hub} (R package COVID19, GitHub repo, cloud storage), and its contents herein, including all data, mapping, and analyses, are provided to the public strictly for educational and academic research purposes. The \href{https://covid19datahub.io}{COVID-19 Data Hub} relies upon publicly available data from multiple sources. We are currently in the process of reconciling the providers with proper reference to their open-source data. Please inform us if you see any issues with the data licenses.

We try our best to guarantee the data quality and consistency and the continuous filling of the \href{https://covid19datahub.io}{COVID-19 Data Hub}. However, it is free software and comes with ABSOLUTELY NO WARRANTY. We hereby disclaim any and all representations and warranties with respect to the \href{https://covid19datahub.io}{COVID-19 Data Hub}, including accuracy, fitness for use, and merchantability. Reliance on the \href{https://covid19datahub.io}{COVID-19 Data Hub} for medical guidance or use of the \href{https://covid19datahub.io}{COVID-19 Data Hub} in commerce is strictly prohibited.
}
\examples{
\dontrun{

# Worldwide data by country
covid19()

# Worldwide data by state
covid19(level = 2)

# US data by state
covid19("USA", level = 2)

# Swiss data by state (cantons)
covid19("CHE", level = 2)

# Italian data by state (regions)
covid19("ITA", level = 2)

# Italian and US data by city
covid19(c("ITA","USA"), level = 3)
}

}
\references{
Guidotti, E., Ardia, D., (2020), "COVID-19 Data Hub", Working paper, \doi{10.13140/RG.2.2.11649.81763}.
}
