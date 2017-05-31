NTHREADS=1
cd inputs
while getopts t:d:s:m:l option
do
 case "${option}"
 in
  t) ../bin/bodytrack.arm sequenceB_1 4 1 5 1 0 ${NTHREADS};;
  d) ../bin/bodytrack.arm sequenceB_1 4 1 100 3 0 ${NTHREADS};;
  s) ../bin/bodytrack.arm sequenceB_1 4 1 1000 5 0 ${NTHREADS};;
  m) ../bin/bodytrack.arm sequenceB_2 4 2 2000 5 0 ${NTHREADS};;
  l) ../bin/bodytrack.arm sequenceB_4 4 4 4000 5 0 ${NTHREADS};;
 esac
done
cd ..
