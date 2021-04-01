
INFILE=${1}
N_SPLIT=${2}

# generate random prefix for all tmp files
RAND_1=`echo $((1 + RANDOM % 100))`
RAND_2=`echo $((100 + RANDOM % 200))`
RAND_3=`echo $((200 + RANDOM % 300))`
RAND=`echo "${RAND_1}${RAND_2}${RAND_3}"`

# write header to file
head -1 ${INFILE} > header_${RAND}.csv

# rm header
tail -n +2 ${INFILE} > tmp_${RAND}.csv

# split file WO header
split -d -l ${N_SPLIT} tmp_${RAND}.csv ${RAND}_SPLIT_

# make fofn of all split files
ls ${RAND}_SPLIT_* > ${RAND}_FOFN.txt

# loop through and add header line and write all to file
for TAXA in $(cat ${RAND}_FOFN.txt); do
	cat header_${RAND}.csv ${TAXA} > HEADER_${TAXA}
	rm ${TAXA}
done

 rm tmp_${RAND}.csv
