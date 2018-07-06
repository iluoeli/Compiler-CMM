path=../Test/test-lab1/
for f in $(ls ${path} | grep .cmm | sort -t . -k 1.5,1.5 -k 1.7n);
	do echo "\n"${f} && ./parser ${path}${f};
done
