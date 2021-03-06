% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MeDEStrand.selectSig.R
\name{MeDEStrand.selectSig}
\alias{MeDEStrand.selectSig}
\title{Selects putative DMRs (Differential Methylated Regions) from the result table returned by function 'MeDEStrand.meth()'}
\usage{
MeDEStrand.selectSig(results = NULL, p.value = 0.1, adj = T,
  ratio = NULL, bg.counts = NULL, merge.within.distance = NULL)
}
\arguments{
\item{results}{results table returned by function \code{\link{MeDEStrand.meth}}}

\item{p.value}{threshold for significant differential methylation. default 0.1}

\item{adj}{TRUE or FALSE. Whether multiple test correction is conducted based on the methods: holm, hochberg, hommel, bonferroni, BH, BY, fdr, none.}

\item{bg.counts}{bin filtering parameter. The parameter requires a minimal number of reads for each of the MEDIPS SET groups. To apply this condition, mean of the bin counts per group is considered.}

\item{merge.within.distance}{merges significant differential methylated bins within certain bp distance. default is NULL (do not merge).}
}
\value{
result table of bins that are significantly differentially methylated between two groups MSet1 and MSet2.
}
\description{
Based on the results table returned by function 'MeDEStrand.meth()', this function selects bins which show significant differential methylation between two groups of MEDIPS SETs. Selection of significant bins follows according to the specified parameters.
}
\examples{
result = MeDEStrand.meth(MSet1=NSCLC_N.MeDIP,  MSet2=NSCLC_T.MeDIP, CSet=CS, chr=c('chr20'),
p.adj="fdr", minRowSum= 12)
result.sig = MeDEStrand.selectSig(results = results, p.value = 0.1, adj = T, ratio = NULL, bg.counts = 1,
merge.within.distance = NULL )
}
