[UNDER CONSTRUCTION]

In an interactive session do the following

1) Copies the first 30 files from /scratch/users/paciorek/wikistats/dated_2017_small/dated to /tmp (recall the use of wildcards in file globbing to select a set of files, from the unit/tutorial on bash). 
2) Run R code to do the following: Using the future package, with either future_lapply or foreach with the doFuture backend, write code that, in parallel, reads in the space-delimited file and filters to only the rows that refer to pages where "Barack_Obama" appears. You can use the code from unit7-parallel.R as a template, in particular the chunks labeled 'rf-example', 'foreach' and 'future_lapply'. [Jared, insert additional text from S08 from last year]

Now replicate what you did above but using sbatch to submit your job as a batch job, where step 2 involves running R from the command line using R CMD BATCH.



Jared:
Files to provide:
  Pre-lab
  example.sh - example script that does something small
  exSub - example submission script for SBATCH commands
  pdf overview
  Post-lab
  foreach and future_lapply examples to do the task
My plan:
  1) go over SCF cluster structure/organization (if possible...)
  2) login, do some things
    a) find my directory, find scratch space, etc
    b) show modules and how to load/unload, why doesn't module spider work?
    c) talk about and run example script
    d) talk about job submission, run example script
  3) release them to do the assignment
  4) release assignment solutions after class
