#!bin/bash
 
echo "Wprowadź 5 liczb"
read l1
read l2
read l3
read l4
read l5
 
if [ ! -d /home/adminadmin/Pulpit/Obliczenia ]; then
    echo "Tworzenie katalogu"
    mkdir /home/jaroslaw/Pulpit/Obliczenia
    sleep 3s
else
    echo "Folder już istnieje"
fi
 
folder="/home/jaroslaw/Pulpit/Obliczenia"
 
 
if [ ! -f nieposortowane.txt ]; then
    echo "Tworzenie pliku"
    touch nieposortowane.txt
    sleep 3s
else
    echo "Plik już istnieje"
fi
 
 
if [ -e $folder/segregacja.txt ]; then
    echo "Plik istnieje, usuwanie danych"
    > $folder/mediana.txt
    sleep 3s
else
    echo "Tworzenie pliku"
    touch $folder/segregacja.txt
    sleep 3s
fi
 
 
if [ -e $folder/mediana.txt ]; then
    echo "Plik istnieje, usuwanie danych"
    > $folder/mediana.txt
    sleep 3s
else
    echo "Tworzenie pliku"
    touch $folder/mediana.txt
    sleep 3s
fi
 
 
if [ -e $folder/parzysta.txt ]; then
    echo "Plik istnieje, usuwanie danych"
    > $folder/parzysta.txt
    sleep 3s
else
    echo "Tworzenie pliku"
    touch $folder/parzysta.txt
    sleep 3s
fi
 
 
if [ -e $folder/nieparzysta.txt ]; then
    echo "Plik istnieje, usuwanie danych"
    > $folder/nieparzysta.txt
    sleep 3s
else
    echo "Tworzenie pliku"
    touch $folder/nieparzysta.txt
    sleep 3s
fi
 
 
p="nieposortowane.txt"
 
echo "$l1" >> $p
echo "$l2" >> $p
echo "$l3" >> $p
echo "$l4" >> $p
echo "$l5" >> $p
 
echo "Posortowane wartości"
 
sort $p
sort $p >> $folder/segregacja.txt
 
echo "Mediana"
 
sed -n '3p' < $folder/segregacja.txt
sed -n '3p' < $folder/segregacja.txt >> $folder/mediana.txt
 
let w=l1%2
if [ $w -eq 0 ]; then
    echo -n "$l1 " >> $folder/parzysta.txt
else
    echo -n "$l1 " >> $folder/nieparzysta.txt
fi
 
let w=l2%2
if [ $w -eq 0 ]; then
    echo -n "$l2 " >> $folder/parzysta.txt
else
    echo -n "$l2 " >> $folder/nieparzysta.txt
fi
 
let w=l3%2
if [ $w -eq 0 ]; then
    echo -n "$l3 " >> $folder/parzysta.txt
else
    echo -n "$l3 " >> $folder/nieparzysta.txt
fi
 
let w=l4%2
if [ $w -eq 0 ]; then
    echo -n "$l4 " >> $folder/parzysta.txt
else
    echo -n "$l4 " >> $folder/nieparzysta.txt
fi
 
let w=l5%2
if [ $w -eq 0 ]; then
    echo -n "$l5 " >> $folder/parzysta.txt
else
    echo -n "$l5 " >> $folder/nieparzysta.txt
fi
 
echo "Parzyste liczby"
cat $folder/parzysta.txt
echo ""
 
echo "Nieparzyste liczby"
cat $folder/nieparzysta.txt
echo ""
 
rm nieposortowane.txt
