NTHREADS=1
cd inputs
while getopts t:d:s:m:l option
do
 case "${option}"
 in
  t) ../bin/bin/blackscholes ${NTHREADS} in_4.txt prices_4.txt;;
  d) ../bin/bin/blackscholes ${NTHREADS} in_16.txt prices_16.txt;;
  s) ../bin/bin/blackscholes ${NTHREADS} in_4K.txt prices_4K.txt;;
  m) ../bin/bin/blackscholes ${NTHREADS} in_16K.txt prices_16K.txt;;
  l) ../bin/bin/blackscholes ${NTHREADS} in_64L.txt prices_64K.txt;;
 esac
done
cd ..
