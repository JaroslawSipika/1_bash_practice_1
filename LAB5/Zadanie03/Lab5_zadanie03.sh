#!bin/bash
echo "Wybierz figurę"
echo "1. Kwadrat"
echo "2. Prostokąt"
echo "3. Koło"
echo "4. Trójkąt"
read opt
 
if [ ! -d /home/jaroslaw/Pulpit/Obliczenia_figur ]; then
    echo "Tworzenie katalogu"
    mkdir /home/adminadmin/Pulpit/Obliczenia_figur
    sleep 3s
else
    echo "Folder już istnieje"
fi
 
folder="/home/adminadmin/Pulpit/Obliczenia_figur"
 
case $opt in
    [1])
        echo "Co chcesz obliczyć ?"
        echo "1. Pole"
        echo "2. Obwód"
        read kwOpt
 
        case $kwOpt in
            [1])
                echo "Podaj bok kwadratu"
                read bok
 
                let pole=bok*bok
 
                if [ ! -f $folder/Kwadrat.txt ]; then
                    echo "Tworzenie pliku"
                    touch $folder/Kwadrat.txt
                    sleep 3s
                else
                    echo "Plik już istnieje"
                fi
 
                echo "Pole: $pole"
                echo "Pole: $pole" >> $folder/Kwadrat.txt
                echo "" >> $folder/Kwadrat.txt
            ;;
            [2])
                echo "Podaj bok kwadratu"
                read bok
                let obw=4*bok
                let pole=bok*bok
 
                if [ ! -f $folder/Kwadrat.txt ]; then
                    echo "Tworzenie pliku"
                    touch $folder/Kwadrat.txt
                    sleep 3s
                else
                    echo "Plik już istnieje"
                fi
 
                echo "Obwód: $obw"
                echo "Obwód: $obw" >> $folder/Kwadrat.txt
                echo  "" >> $folder/Kwadrat.txt
            ;;
            ?*)
                echo "Niepoprawna opcja"
            ;;
        esac
    ;;
    [2])
       
        echo "Co chcesz obliczyć ?"
        echo "1. Pole"
        echo "2. Obwód"
        read prOpt
 
        case $prOpt in
            [1])
       
                echo "Podaj szerokosc prostokata"
                read szer           
                echo "Podaj wysokosc prostokata"
              
                read wys
 
                if [ ! -f $folder/Prostokąt.txt ]; then
                    echo "Tworzenie pliku"
                    touch $folder/Prostokąt.txt
                    sleep 3s
                else
                        echo "Plik już istnieje"
                fi
 
                let pole=wys*szer
 
                echo "Pole: $pole"
                echo "Pole: $pole" >> $folder/Prostokąt.txt
                echo "" >> $folder/Prostokąt.txt
            ;;
            [2])
                echo "Podaj szerokosc prostokata"
                read szer
                echo "Podaj wysokosc prostokata"
                read wys
 
                if [ ! -f $folder/Prostokąt.txt ]; then
                    echo "Tworzenie pliku"
                    touch $folder/Prostokąt.txt
                    sleep 3s
                else
                    echo "Plik już istnieje"
                fi
 
                let obw=wys+wys+szer+szer
 
                echo "Obwód: $obw"
                echo "Obwód: $obw" >> $folder/Prostokąt.txt
                echo "" >> $folder/Prostokąt.txt
            ;;
            ?*)
                echo "Niepoprawna opcja"
            ;;
        esac
    ;;
    [3])
        echo "Co chcesz obliczyć ?"
        echo "1. Pole"
        echo "2. Obwód"
        read koOpt
 
        case $koOpt in
            [1])
                echo "Podaj promień koła"
                read pr
 
                if [ ! -f $folder/Koło.txt ]; then
                    echo "Tworzenie pliku"
                    touch $folder/Koło.txt
                    sleep 3s
                else
                    echo "Plik już istnieje"
                fi
 
                echo -n "Pole: "
                echo "3.14*$pr*$pr" | bc
 
                echo -n "Pole: " >> $folder/Koło.txt
                echo "3.14*$pr*$pr" | bc >> $folder/Koło.txt
                echo "" >> $folder/Koło.txt
            ;;
            [2])
                echo "Podaj promień koła"
                read pr
 
                if [ ! -f $folder/Koło.txt ]; then
                    echo "Tworzenie pliku"
                    touch $folder/Koło.txt
                    sleep 3s
                else
                    echo "Plik już istnieje"
                fi
                echo -n "Obwód: "
				echo "3.14*$pr*2" | bc
 
                echo -n "Obwód: " >> $folder/Koło.txt
                echo "3.14*$pr*2" | bc >> $folder/Koło.txt
				echo "" >> $folder/Koło.txt
            ;;
            ?*)
                echo "# Niepoprawna opcja                 #"
            ;;
        esac
    ;;
    [4])
        echo "Co chcesz obliczyć ?"
        echo "1. Pole"
        echo "2. Obwód"
        echo "3. Wysokość"
        read trOpt
 
        case $trOpt in
            [1])
                echo "Podaj pierwszy bok"
                read a
                echo "Podaj drugi bok"
                read b
                echo "Podaj trzeci bok"
                read c
                echo "Podaj wysokość"
                read h
                echo "Z którego boku wychodzi (1, 2, 3)"
                read wh
 
                let w1=b-a
                let w2=c-b
                let w3=c-a
                let w4=b+c
                let w5=a+c
                let w6=b+a
 
                if [ $w1 -lt $c -a $w2 -lt $a -a $w3 -lt $b -a $w4 -gt $a -a $w5 -gt $b -a $w6 -gt $c ]; then
                    if [ ! -f $folder/Trójkąt.txt ]; then
                        echo "Tworzenie pliku"
                        touch $folder/Trójkąt.txt
                        sleep 3s
                    else
                        echo "Plik już istnieje"
                    fi
 
                    case $wh in
                        [1])
                            let pole=(a*h)/2
                        ;;
                        [2])
                            let pole=(b*h)/2
                        ;;
                        [3])
                            let pole=(c*h)/2
                        ;;
                    esac
 
                    echo "Pole: $pole"
                    echo "Pole: $pole" >> $folder/Trójkąt.txt
                    echo "" >> $folder/Trójkąt.txt
                else
                    echo "Taki trójkąt nie powstanie"
                fi
            ;;
            [2])
		echo "Podaj pierwszy bok"
                read a
                echo "Podaj drugi bok"
                read b
                echo "# Podaj trzeci bok"
                read c
 
                let w1=b-a
                let w2=c-b
                let w3=c-a
                let w4=b+c
                let w5=a+c
                let w6=b+a
 
                if [ $w1 -lt $c -a $w2 -lt $a -a $w3 -lt $b -a $w4 -gt $a -a $w5 -gt $b -a $w6 -gt $c ]; then
                    if [ ! -f $folder/Trójkąt.txt ]; then
                        echo "Tworzenie pliku"
                        touch $folder/Trójkąt.txt
                        sleep 3s
                    else
                        echo "Plik już istnieje"
                    fi
 
                    let obw=a+b+c
 
                    echo "Obwód: $obw"
                    echo "Obwód: $obw" >> $folder/Trójkąt.txt
                    echo "" >> $folder/Trójkąt.txt
 
 
                else
                    echo "Taki trójkąt nie powstani"
                fi
            ;;
            [3])
                echo "Podaj bok wysokości"
                read a
 
                if [ ! -f $folder/Trójkąt.txt ]; then
                    echo "Tworzenie pliku"
                    touch $folder/Trójkąt.txt
                    sleep 3s
                else
                    echo "Plik już istnieje"
                fi
 
                echo -n "Wysokość: "
                echo "($a*sqrt(3))/2" | bc
                echo -n "Wysokość: " >> $folder/Trójkąt.txt
                echo "($a*sqrt(3))/2" | bc >> $folder/Trójkąt.txt
                echo "" >> $folder/Trójkąt.txt
            ;;
            ?*)
                echo "Niepoprawna opcja"
            ;;
        esac
    ;;
    ?*)
        echo "Wybrano złą opcję"
    ;;
esac
