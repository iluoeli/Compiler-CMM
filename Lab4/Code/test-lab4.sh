path=../Test/test-lab4/
for f in $(ls ${path} | grep .cmm$ | sort -t . -k 1.5,1.5 -k 1.7n);
	do echo "\n"${f} && ./parser ${path}${f} ${path}${f%.*}".s";
done

for f in $(ls ${path} | grep .s$ | sort -t . -k 1.5,1.5 -k 1.7n);
	do echo "\n"${f} && out=`spim -file ${path}${f} < ${path}"input.txt" | grep -o '^[0-9]*$'` && echo ${out};
done


