 511  grep Belgium cpds.csv | cut -d',' -f6
  512  grep Belgium cpds.csv | cut -d',' -f6 | sort 
  513  grep Belgium cpds.csv | cut -d',' -f6 | sort -n 
  514  grep Belgium cpds.csv | cut -d',' -f6 | sort -n | head -n 2
  515  grep Belgium cpds.csv | cut -d',' -f6 | sort -n 
  516  less cpds.csv 
  517  grep Belgium cpds.csv | cut -d',' -f6 | sort -n | head -n 1
  518  head -n -1 cpds.csv 
  519  head -n +1 cpds.csv 
  520  head -n +2 cpds.csv 
  521  man head
  522  cut -d',' -f2 cpds.csv
  523  cut -d',' -f2 cpds.csv | less
  524  cut -d',' -f2 cpds.csv | tail -n +2 | sort -u 
  525  countries=$(cut -d',' -f2 cpds.csv | tail -n +2 | sort -u) 
  526  echo ${countries}
  527  countries=$(cut -d',' -f2 cpds.csv | tail -n +2 | sort -u | sed 's/"//g') 
  528  echo ${countries}
  529  countries=$(cut -d',' -f2 cpds.csv | tail -n +2 | sort -u | sed 's/"//g' | sed 's/ /_/g') 
  530  echo ${countries}
  531  for c in ${countries}; do     echo ${c}; done
  532  for c in ${countries}; do     echo ${c} $(grep ${c} cpds.csv | cut -d',' -f6  | sort -n | head -n +2); done
  533  for c in ${countries}; do     echo ${c} $(grep ${c} cpds.csv | cut -d',' -f6  | sort -n | head -n 1); done
  534  less RTADataSub.csv 
  535  less RTADataSub.csv 
  536  cut -d',' -f4 RTADataSub.csv | sort | uniq 
  537  cut -d',' -f4 RTADataSub.csv | sort | uniq | grep "[^0-9]"
  538  cut -d',' -f4 RTADataSub.csv | sort | uniq | grep [^0-9]
  539  cut -d',' -f4 RTADataSub.csv | sort | uniq | grep [^0-9]

