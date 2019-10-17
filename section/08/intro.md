[UNDER CONSTRUCTION]

In an interactive session do the following

1) Copies the first 30 files from /scratch/users/paciorek/wikistats/dated_2017_small/dated to /tmp (recall the use of wildcards in file globbing to select a set of files, from the unit/tutorial on bash). 
2) Run R code to do the following: Using the future package, with either future_lapply or foreach with the doFuture backend, write code that, in parallel, reads in the space-delimited file and filters to only the rows that refer to pages where "Barack_Obama" appears. You can use the code from unit7-parallel.R as a template, in particular the chunks labeled 'rf-example', 'foreach' and 'future_lapply'. [Jared, insert additional text from S08 from last year]

Now replicate what you did above but using sbatch to submit your job as a batch job, where step 2 involves running R from the command line using R CMD BATCH.

