clear
echo 
echo "                   ..-''-....* Nível 2 *....-''-.."
cat ../../Files/short-logo.txt
echo
echo
echo "Parabéns:  Chegou  ao nível 2! Para chegar ao nível 3 terá de  responder  a"
echo "uma pergunta de escolha múltipla e descodificar um código."
echo 
echo 

echo "É verdade que o Android também usa Linux?"
echo
echo "    1 - Sim, é verdade.           2 - Não, é mentira."
echo "    3 - Não, é verdira.           4 - Sim, é mendade."
echo 
read -p "Resposta: " NUMERO
echo
echo 

if [ $NUMERO -ne 1 ]; then
	echo "Resposta errada! Tente de novo."
	echo 
	exit 1
fi

echo "Resposta correta! Parabéns."
echo 
echo "O  código seguinte diz respeito a uma personagem conhecida da série  Dragon"
echo "Ball. O código mostra  os  valores *hexadecimais* dos caracteres em  ASCII."
echo "Consegue descodificar e indicar o nome da personagem?"
echo "Dica: uma tabela ASCII vinha mesmo a calhar..."
echo 
echo -n "     "; echo -n $RESPOSTA | od -An -t x1
echo
read -p "Nome do herói: " NOME
echo 

if [ "$RESPOSTA" != "$NOME" ]; then
	echo "Resposta errada!"
	echo 
	exit 1
fi

case "$(( ( RANDOM % 4 )  + 1 ))" in 

	1) echo "#!/bin/bash" > ../../Files/33.sh
    echo "" >> ../../Files/33.sh
    echo "RESPOSTA='The Weeknd'" >> ../../Files/33.sh
	;;

	2) echo "#!/bin/bash" > ../../Files/33.sh
    echo "" >> ../../Files/33.sh
    echo "RESPOSTA='Selena Gomez'" >> ../../Files/33.sh
    ;;

	3) echo "#!/bin/bash" > ../../Files/33.sh
    echo "" >> ../../Files/33.sh
    echo "RESPOSTA='Justin Bieber'" >> ../../Files/33.sh
    ;;

	4) echo "#!/bin/bash" > ../../Files/33.sh
    echo "" >> ../../Files/33.sh
    echo "RESPOSTA='Shawn Mendes'" >> ../../Files/33.sh
    ;;
esac

cat ../../Files/3.sh >> ../../Files/33.sh
chmod 500 ../../Files/33.sh

echo 

case "$(( RANDOM % 3 ))" in 

	0)
	echo "Siga por Cima!"
	echo 
	echo "12589" > Cima/ola.txt
	mkdir Cima/Diagonal
	mkdir Cima/Obliqua
    cp ../../Files/3.exe Cima/3.exe
    chmod 100 Cima/3.exe
    mv ESTA-AQUI Cima/ESTA-AQUI
    ;;

	1)
	echo "Siga por Baixo!"
	echo 
	echo "12589" > Baixo/ola.txt
	mkdir Baixo/Diagonal
	mkdir Baixo/Obliqua
    cp ../../Files/3.exe Baixo/3.exe
    chmod 100 Baixo/3.exe
    mv ESTA-AQUI Baixo/ESTA-AQUI
    ;;

    2)
	echo "Siga em Frente!"
	echo 
	echo "12589" > Frente/ola.txt
	mkdir Frente/Diagonal
	mkdir Frente/Obliqua
    cp ../../Files/3.exe Frente/3.exe
    chmod 100 Frente/3.exe
    mv ESTA-AQUI Frente/ESTA-AQUI
    ;;

esac

sleep 0.25
echo "A devolver o controlo ao utilizador. Boa sorte!"
echo 
exit 0