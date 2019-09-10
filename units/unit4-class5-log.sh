  968  2019-09-09 14:13:31 man grep
  969  2019-09-09 14:14:04 grep -l 'example.pdf' unit3-dataIO.R
  970  2019-09-09 14:14:34 grep -l 'example.pdf' unit3-dataIO.R unit4-programming.R unit6-numbers.R
  971  2019-09-09 14:15:08 ls -tr *.R 
  972  2019-09-09 14:15:30 ls -tr *.R | tail -n 5
  973  2019-09-09 14:15:36 ls -trl *.R | tail -n 5
  974  2019-09-09 14:16:16 ls -t --reverse -l *.R | tail -n 5
  975  2019-09-09 14:16:37 ls -t --reverse  *.R | tail -n 5
  976  2019-09-09 14:17:04 ls -t --reverse  *.R | tail -n 5 | grep -l "example.pdf"
  977  2019-09-09 14:17:16 ls -t --reverse  *.R | tail -n 5 | 
  978  2019-09-09 14:17:39 ls -t --reverse  *.R | tail -n 5 | grep  "example.pdf"
  979  2019-09-09 14:17:44 ls -t --reverse  *.R | tail -n 5 | grep unit11
  980  2019-09-09 14:21:14 grep -l "example.pdf" $(ls -tr *.R | tail -n 5) 
  981  2019-09-09 14:21:33 grep example.pdf unit13-graphics.R
  982  2019-09-09 14:22:20 ls -t --reverse  *.R | tail -n 5 | xargs grep -l "example.pdf"
  983  2019-09-09 14:26:38 ls unit*R
  984  2019-09-09 14:27:18 ls unit[1-9]*.R
  985  2019-09-09 14:27:43 grep library unit[1-9]*.R
  986  2019-09-09 14:28:19 grep --no-filename library unit[1-9]*.R
  987  2019-09-09 14:29:14 grep --no-filename "^library" unit[1-9]*.R
  988  2019-09-09 14:30:38 grep --no-filename "^library" unit[1-9]*.R | cut -d"#" -f1
  989  2019-09-09 14:32:10 grep --no-filename "^library" unit[1-9]*.R | cut -d"#" -f1 | sed 's/;/\n/g' 
  990  2019-09-09 14:33:43 grep --no-filename "^library" unit[1-9]*.R | cut -d"#" -f1 | sed 's/;/\n/g' | grep -v "help ="
  991  2019-09-09 14:34:33 grep --no-filename "^library" unit[1-9]*.R | cut -d"#" -f1 | sed 's/; /\n/g' | grep -v "help =" 
  992  2019-09-09 14:36:15 grep --no-filename "^library" unit[1-9]*.R | cut -d"#" -f1 | sed 's/; /\n/g' | grep -v "help =" | sed 's/library(//g'
  993  2019-09-09 14:36:50 grep --no-filename "^library" unit[1-9]*.R | cut -d"#" -f1 | sed 's/; /\n/g' | grep -v "help =" | sed 's/library(//g' | sed 's/)//g'
  994  2019-09-09 14:37:11 grep --no-filename "^library" unit[1-9]*.R | cut -d"#" -f1 | sed 's/; /\n/g' | grep -v "help =" | sed 's/library(//g' | sed 's/)//g' | sort | uniq 
  995  2019-09-09 14:37:45 grep --no-filename "^library" unit[1-9]*.R | cut -d"#" -f1 | sed 's/; /\n/g' | grep -v "help =" | sed 's/library(//g' | sed 's/)//g' | sort | uniq > libs.txt
  996  2019-09-09 14:37:48 cat libs.txt 
  997  2019-09-09 14:40:32 Rscript -e "pkgs <- scan('libs.txt', what = 'character'); install.packages(pkgs)"

paciorek@FVFXNFG9JK77:~/Desktop/stat243-fall-2019/units (master)> grep bash unit4-bash.sh | wc -l
       3
paciorek@FVFXNFG9JK77:~/Desktop/stat243-fall-2019/units (master)> grep -c bash unit4-bash.sh 
3
paciorek@FVFXNFG9JK77:~/Desktop/stat243-fall-2019/units (master)> echo "There are $(grep -c bash unit4-bash.sh) occurrences of the word 'bash' in this file."
There are 3 occurrences of the word 'bash' in this file.
paciorek@FVFXNFG9JK77:~/Desktop/stat243-fall-2019/units (master)> echo "There are $(grep -c bash unit4-bash.sh) occurrences of the word 'bash' in this file."
There are 3 occurrences of the word 'bash' in this file.
paciorek@FVFXNFG9JK77:~/Desktop/stat243-fall-2019/units (master)> 
paciorek@FVFXNFG9JK77:~/Desktop/stat243-fall-2019/units (master)> 
paciorek@FVFXNFG9JK77:~/Desktop/stat243-fall-2019/units (master)> echo There are $(grep -c bash unit4-bash.sh) occurrences of the word 'bash' in this file.
There are 3 occurrences of the word bash in this file.
paciorek@FVFXNFG9JK77:~/Desktop/stat243-fall-2019/units (master)> echo 'There are $(grep -c bash unit4-bash.sh) occurrences of the word 'bash' in this file.'
There are $(grep -c bash unit4-bash.sh) occurrences of the word bash in this file.

