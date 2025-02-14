% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/susie_wrapper.R
\name{susie_rss_qc}
\alias{susie_rss_qc}
\title{SuSiE RSS Analysis with Quality Control and Imputation}
\usage{
susie_rss_qc(
  z,
  R,
  ref_panel,
  bhat = NULL,
  shat = NULL,
  var_y = NULL,
  n = NULL,
  L = 10,
  max_L = 20,
  l_step = 5,
  lamb = 0.01,
  rcond = 0.01,
  R2_threshold = 0.6,
  minimum_ld = 5,
  impute = TRUE,
  output_qc = TRUE,
  ...
)
}
\arguments{
\item{z}{Numeric vector of z-scores corresponding to the effect size estimates, with names matching the reference panel's variant IDs.}

\item{R}{Numeric matrix representing the LD (linkage disequilibrium) matrix.}

\item{ref_panel}{Data frame with at least 'variant_id' column that matches the names of z.}

\item{bhat}{Optional numeric vector of effect size estimates.}

\item{shat}{Optional numeric vector of standard errors associated with the effect size estimates.}

\item{var_y}{Optional numeric value representing the total phenotypic variance.}

\item{n}{Optional numeric value representing the sample size used in the analysis.}

\item{L}{Initial number of causal configurations to consider in the analysis.}

\item{max_L}{Maximum number of causal configurations to consider when dynamically adjusting L.}

\item{l_step}{Step size for increasing L when the limit is reached during dynamic adjustment.}

\item{lamb}{Regularization parameter for the RAiSS imputation method.}

\item{rcond}{Condition number for the RAiSS imputation method.}

\item{R2_threshold}{R-squared threshold for the RAiSS imputation method.}

\item{minimum_ld}{Minimum number of LD values for the RAiSS imputation method.}

\item{impute}{Logical; if TRUE, performs imputation for outliers identified in the analysis.}

\item{output_qc}{Logical; if TRUE, includes QC-only results in the output.}
}
\value{
A list containing the results of the SuSiE RSS analysis after applying quality control measures and optional imputation.
}
\description{
Performs SuSiE RSS analysis with optional quality control steps that include
z-score and LD matrix discrepancy correction and imputation for outliers. It leverages
the `susie_rss` function for the core analysis and provides additional functionality
for handling data discrepancies and missing values.
}
