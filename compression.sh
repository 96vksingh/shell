# !/bin/bash
echo "
1. GZIP and GUNZIP 
2. BZIP2 and BUNZIP2
3. ZCAT and PCAT
4.Compress and Pack
5.TAR and TAR using wildcards "
read -p "enter your choice-" choice
case $choice in
1)
clear 
echo "
1-zip
2-unzip
enter choice"
read cho
case $cho in
    1) 
	read -p"Enter how many files u want to compress" n
	for i in $n
	do 
	read -p"enter file name-"i
	gzip $i >> part1.gz
    done
		;;
	2)
		echo "unzipping file...."
		gunzip part1.gz
		;;
	
	;;
2)clear 
echo "
1-zip
2-unzip
enter choice"
read cho
case $cho in
    1)
		read -p"Enter how many files u want to compress" n
		for i in $n
		do 
		read -p"enter file name-"i
		bzip2 $i >> part2.bz2
	    done
		;;
	2)
		bunzip2 part2.bz2
		;;
	esac
	
	;;
3)clear 
echo "
1-zip
2-unzip
enter choice"
read cho
case $cho in
    1)
		read -p"Enter how many files u want to compress" n
		for i in $n
		do 
		read -p"enter file name-"i
		gzip $i >> part1.zip
	    done
		;;
	2)
		;;
	esac
	;;
4)clear 
echo "
1-zip
2-unzip
enter choice"
read cho
case $cho in
    1)
		read -p"Enter how many files u want to compress" n
		for i in $n
		do 
		read -p"enter file name-"i
		gzip $i >> part1.zip
	    done
		;;
	2)
		;;
	esac
	;;
5)clear 
tar -cvf part5.tar
echo "
1-zip
2-unzip
enter choice"
read cho
case $cho in
    1)
		read -p"Enter how many files u want to compress" n
		for i in $n
		do 
		read -p"enter file name-"i
		tar -zvf $i >> part5.tar
	    done
		;;
	2)
		tar -xvf part5.tar
		;;
	esac
	;;
esac