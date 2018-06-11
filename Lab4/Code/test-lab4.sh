path=../Test/test-lab4/
for f in $(ls ${path} | grep fibonacci.cmm$ | sort -t . -k 1.5,1.5 -k 1.7n);
	do echo "\n"${f} && ./parser ${path}${f} ${path}${f%.*}".s";
done

