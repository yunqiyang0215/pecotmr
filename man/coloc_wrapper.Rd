% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/encoloc.R
\name{coloc_wrapper}
\alias{coloc_wrapper}
\title{Colocalization Analysis Wrapper}
\usage{
coloc_wrapper(
  xqtl_file,
  gwas_files,
  gwas_finemapping_obj = NULL,
  xqtl_finemapping_obj = NULL,
  gwas_varname_obj = NULL,
  xqtl_varname_obj = NULL,
  p1 = 1e-04,
  p2 = 1e-04,
  p12 = 5e-06,
  ...
)
}
\arguments{
\item{xqtl_file}{Path to the xQTL RDS file.}

\item{gwas_files}{Vector of paths to GWAS RDS files.}

\item{gwas_finemapping_obj}{Optional table name in GWAS RDS files (default 'susie_fit').}

\item{xqtl_finemapping_obj}{Optional table name in xQTL RDS files (default 'susie_fit').}

\item{p1, }{p2, and p12 are results from xqtl_enrichment_wrapper (default 'p1=1e-4, p2=1e-4, p12=5e-6', same as coloc.bf_bf)}
}
\value{
A list containing the processed xQTL and GWAS logBF matrices for colocalization analysis, coloc results, output from the compute_qtl_enrichment function
}
\description{
This function processes xQTL and multiple GWAS finemapped data files for colocalization analysis.
}
\examples{
xqtl_file <- "xqtl_file.rds"
gwas_files <- c("gwas_file1.rds", "gwas_file2.rds")
result <- coloc_wrapper(xqtl_file, gwas_files)
}
