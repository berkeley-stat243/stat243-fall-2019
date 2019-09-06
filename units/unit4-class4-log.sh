  500  cd Desktop/stat243-fall-2018/data
  501  less coop.txt 
  502  less coop.txt 
  503  cut -b 50-70 coop.txt 
  504  cut -b 50-70 coop.txt  | less
  505  cut -b 60-61 coop.txt | uniq  
  506  cut -b 60-61 coop.txt | sort 
  507  cut -b 60-61 coop.txt | sort | uniq
  508  cut -b 60-61 coop.txt | sort -u 
  509  history
  510  cut -b 60-61 coop.txt | sort -u | nl
  511  cut -b 60-61 coop.txt | sort | uniq -c 
  512  man uniq
  513  cut -b 60-61 coop.txt | sort -u | nl
  514  less cpds.csv 
  515  head -n 1 cpds.csv 
  516  head -n 1 cpds.csv | grep "," 
  517  head -n 1 cpds.csv | grep  -o "," 
  518  head -n 1 cpds.csv | grep  -o "," 
  519  head -n 1 cpds.csv | grep  -o "," | wc 
  520  head -n 1 cpds.csv | grep  -o "," | wc -l 
  521  nfields=$(tail -n 1 cpds.csv | grep -o ',' | wc -l)
  522  echo $nfields
  523  nfields=$(echo "${nfields}+1" | bc)
  524  echo $nfields
  525  head -n 1 cpds.csv | grep  -o "," > tmp.txt
  526  cat tmp.txt
  527  echo ","
  528  echo "," >> tmp.txt 
  529  tmp.txt
  530  cat tmp.txt
  531  wc -l tmp.txt
  532  bc 5+5
  533  echo "5+5" | bc
