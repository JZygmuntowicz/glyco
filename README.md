These are scripts that allow us to search a large number of genomes for CAZymes using the run_dbcan tool.

   1. Install the run_dbcan tool following the instructions at https://dbcan.readthedocs.io/en/latest/installation.html
   2.  If You already have genome files, rename them to numbers from 1 to n using the shell script numbering.sh
   3.  Create another shell script similar to the SBATCH_dbcan.sh file and run it as a batch job. Instructions on choosing parameters and creating an array job are described at https://labstructbioinf.github.io/edi/running_jobs/#array-jobs.

The program will provide us with two output folders - output and db_output. In the db_output folder, You have information from the processes run by run_dbcan, and in the output folder, we have the intended data with CAZymes.

The python file "data_extracting" will allow us to merge the outputs of each genome into one data frame.
