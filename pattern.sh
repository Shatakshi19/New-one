# check 3 arguments are given #

if [$# -lt 3]
then

echo "usage : $0 option pattern filename"
exit

fi

#check the given file is exist#

if [ ! -f $3 ]
then

echo "filename given \"$3\" doesn't exist"

exit
fi

case "$1" in
#count number of lines matches

-i) echo "number of lines matches with the pattern $2 :"
grep -c -i $2 $3
;;

#count number of word matches

-c)echo ""number of word  matches with the pattern $2 :"
grep -o -i $2 $3 | wc -l
;;

#print all the matches lines

-p)echo "lines matches with the pattern $2 :"
grep -i $2 $3
;;

#Delete all the lines matched with the pattern

-d)echo "after deleting the lines matched with the pattern $2 :"
sed  -n "/$2/!p" $3
;;

*)echo "invalid option"
;;
esac













