path=../Test/test-lab3/
for f in $(ls ${path} | grep .txt$ | sort -t . -k 1.5,1.5 -k 1.7n);
	do echo "\n"${f} && ./parser ${path}${f} ${path}${f%.*}".ir";
done

