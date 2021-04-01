# split_csv
Splits long csv with header into n subset files

``split.sh infile.csv [N_lines_per_split]``

## Example
``
cat large.csv
INDEX,A,B,C,D,E,F,G
1,1,1,1,1,1,1,1
2,1,1,1,1,1,1,1
3,1,1,1,1,1,1,1
4,1,1,1,1,1,1,1
5,1,1,1,1,1,1,1
6,1,1,1,1,1,1,1
7,1,1,1,1,1,1,1
8,1,1,1,1,1,1,1
9,1,1,1,1,1,1,1
10,1,1,1,1,1,1,1

sh split.sh large.csv 2

ls
HEADER_63123215_SPLIT_00
HEADER_63123215_SPLIT_01
HEADER_63123215_SPLIT_02
HEADER_63123215_SPLIT_03
HEADER_63123215_SPLIT_04

cat HEADER_63123215_SPLIT_00
INDEX,A,B,C,D,E,F,G
1,1,1,1,1,1,1,1
2,1,1,1,1,1,1,1

cat HEADER_63123215_SPLIT_01
INDEX,A,B,C,D,E,F,G
3,1,1,1,1,1,1,1
4,1,1,1,1,1,1,1

``



