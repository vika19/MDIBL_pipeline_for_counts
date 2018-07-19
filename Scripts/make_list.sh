cp make_1.sh make_1.listed.sh
cp make_2.sh make_2.listed.sh
sed -i "s/()/$(ls -lAh ../Raw_Sequences/ | sed 1d | awk '{print $9}' | sed 's/_R[12]_.*$//g' | sort | uniq | tr '\n' '&' | sed -e 's/&/" "/g' -e 's/^/("/g' -e 's/ "$/)/g')/g" make_1.listed.sh
sed -i "s/()/$(ls -lAh ../Raw_Sequences/ | sed 1d | awk '{print $9}' | sed 's/_R[12]_.*$//g' | sort | uniq | tr '\n' '&' | sed -e 's/&/" "/g' -e 's/^/("/g' -e 's/ "$/)/g')/g" make_2.listed.sh
