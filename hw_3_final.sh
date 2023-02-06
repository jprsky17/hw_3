#!/bin/bash
#1
sed '/Zoo/d' pandas.txt >> q01_sed_no_zoo_pandas.txt
#2
sort -k2 pandas.txt | awk '{print $1,$4,$2}' >> q02_panda_sex.txt
#3
awk '{print $5}' pandas.txt | sort -k5 >> q03_panda_zoos.txt
#4
sed 's/female/f/' pandas.txt | sed 's/male/m/' >> q04_mf_pandas.txt
#5
grep "female" pandas.txt | grep -c "October" >> q05_female_october_pandas.txt
#6
nl pandas.txt >> q06_pandas_line_numbers.txt
#7
sed -n '1p; 6p; 17p' pandas.txt >> q07_pandas_1_6_17.txt
#8
grep -nr "x" -i pandas.txt >> q08_x_files.txt
#9
sort -k5 pandas.txt | awk '{print $5}' | uniq -u >> q09a_uniq_panda_locations.txt
grep -v "Duijiangyang_Panda" q09a_uniq_panda_locations.txt >> q09b_uniq_panda_locations.txt
#10
sort -k4 -n pandas.txt | awk '$4 <= 10' | awk '{print $1, $4}' >> q10_panda_age_columns.txt