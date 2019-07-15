c=0
while [ $c != 10 ]
do
echo "File Operations"
echo "1.File Creations"
echo "2.File Copy"
echo "3.File Rename"
echo "4.File Deletion"
echo "5.File Hide"
echo "6.File Unhide"
echo "7.File Info"
echo "8.File Move"
echo "9.Exit"
read -p "Enter ur choice" ch
case $ch in
1)read -p "Enter the filename" fname
if [ -e $fname ];then
echo "File is already exsist"
else
touch $fname
fi
;;
2)read -p "Enter the filename for copying" fname
if [ -e $fname ];then
read -p "Enter the new file name for copying" fname1
touch $fname1
cp $fname $fname1
else
echo "File not found"
fi
;;
3)read -p "Enter the old filename" fname
if [ -e $fname ];then
read -p "Enter the new file name " fname1
touch $fname1
mv $fname $fname1
echo "The old file $fname renamed into $fname1"
else
echo "File not found"
fi
;;
4)read -p "Enter the filename for delete" fname
if [ -e $fname ];then
rm $fname
else
echo "File not found"
fi
;;
5)read -p "Enter the filename to hide" fname
if [ -e $fname ];then
mv $fname .$fname
else
echo "File not found"
fi
;;
6)read -p "Enter the filename to unhide" fname
if [ -e $fname ];then
mv .$fname $fname
else
echo "File not found"
fi
;;
7)read -p "Enter the filename" fname
if [ -e $fname ];then
stat $fname
else
echo "File not found"
fi
;;
8)read -p "Enter the filename" fname
if [ -e $fname ];then
read -p "Enter the Directory name" dir1
mv $fname $dir1
else
echo "File not found"
fi
;;
9)exit
;;
*)echo "Invalid Options"
;;
esac
done
