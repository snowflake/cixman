# 
# awk script to put the list of helpfiles into one per line format

{
	for(i=1;i<=NF;i++) print $i;}
