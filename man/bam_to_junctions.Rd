% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bam_to_junctions.R
\name{bam_to_junctions}
\alias{bam_to_junctions}
\title{Extract junctions from a BAM file}
\usage{
bam_to_junctions(
  bam_file,
  prefix = file.path(tempdir(), basename(bam_file)),
  long_reads = FALSE,
  overwrite = FALSE
)
}
\arguments{
\item{bam_file}{A \code{character(1)} with the path to the input BAM file.}

\item{prefix}{A \code{character(1)} specifying the output file prefix. This
function creates a file called \code{prefix.jxs.tsv}. By default, the prefix is
the BAM file name and the file is created in the \code{tempdir()} and will be
deleted after you close your R session.}

\item{long_reads}{A \code{logical(1)} indicating whether to increase the buffer
size to accommodate for long-read RNA-sequencing.}

\item{overwrite}{A \code{logical(1)} specifying whether to overwrite the output
file(s), if they exist already.}
}
\value{
A \code{character(1)} with the path to the output junction tsv file.
}
\description{
Given a BAM file, extract junction information including co-ordinates,
strand, anchor length for each junction read. For details on the format of
the output TSV file, check
\url{https://github.com/ChristopherWilks/megadepth#megadepth-pathtobamfile---junctions}.
}
\examples{

## Install if necessary
install_megadepth()

## Find the example BAM file
example_bam <- system.file("tests", "test.bam",
    package = "megadepth", mustWork = TRUE
)

## Run bam_to_junctions()
example_jxs <- bam_to_junctions(example_bam, overwrite = TRUE)

## Path to the output file generated by bam_to_junctions()
example_jxs
}
