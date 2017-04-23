#!/bin/bash

clear
echo
echo "                  ..-''-....* Bem vindo ao *....-''-.."
cat Files/short-logo.txt
cat Files/intro.txt
read -n 1 -s -p "           Carregue em qualquer tecla para continuar..."

clear
echo
echo "                   ..-''-....* Instruções *....-''-.."
cat Files/short-logo.txt
cat Files/instructions.txt
read -n 1 -s -p "           Carregue em qualquer tecla para continuar..."

clear
echo 
echo "A criar a diretoria de entrada."
mkdir Entrada
mkdir Entrada/Direita
mkdir Entrada/Esquerda
cp Files/1.exe Entrada/1.exe
chmod 100 Entrada/1.exe
echo "Este ficheiro marca o local até onde já conseguiu chegar!" > Entrada/ESTA-AQUI
echo

case "$(( ( RANDOM % 4 )  + 1 ))" in 

	1) echo "#!/bin/bash" > Files/11.sh
    echo "" >> Files/11.sh
    echo "RESPOSTA='James Bond'" >> Files/11.sh
	;;

	2) echo "#!/bin/bash" > Files/11.sh
    echo "" >> Files/11.sh
    echo "RESPOSTA='Jason Bourne'" >> Files/11.sh
    ;;

	3) echo "#!/bin/bash" > Files/11.sh
    echo "" >> Files/11.sh
    echo "RESPOSTA='Dominic Toretto'" >> Files/11.sh
    ;;

	4) echo "#!/bin/bash" > Files/11.sh
    echo "" >> Files/11.sh
    echo "RESPOSTA='Lara Croft'" >> Files/11.sh
    ;;
esac

cat Files/1.sh >> Files/11.sh
chmod 500 Files/11.sh

sleep 0.5
echo 
echo "Para entrar no labirinto escreva:"
echo "    > cd Entrada"
sleep 0.25
echo 
echo "A devolver o controlo ao utilizador. Boa sorte!"
echo 

exit 0