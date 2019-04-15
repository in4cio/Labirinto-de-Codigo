#!/bin/bash

case "$(( RANDOM % 3 ))" in 

	0) 
    RESPOSTA="benfica e o maior"
	;;

	1) 
    RESPOSTA="porto e o maior"
    ;;

	2) 
    RESPOSTA="sporting e o maior"
    ;;
esac

clear
echo 
echo "                   ..-''-....* Nível 5 *....-''-.."
cat ../../../../../Files/short-logo.txt
echo
echo
echo "Parabéns:  Chegou  ao nível 5! Para chegar ao nível 6 terá de  responder  a"
echo "uma  pergunta   de  resposta  múltipla,  duas  de  resposta  direta e ainda"
echo "descodificar um código."
echo

echo 
echo "Ao que é que se refere a designação ROT13?"
echo "Dica: experimente procurar no Google..."
echo
echo "    1. A uma auto-estrada norte americana.    2. A uma cifra."
echo "    3. Ao episódio 13 da série ROT do AXN.    4. A um estilo de calças."
echo 
read -p "Resposta: " NUMERO
echo
echo 

if [ $NUMERO -ne 2 ]; then
	echo "Resposta errada! Tente de novo."
	echo 
	exit 1
fi

echo "Resposta correta! Parabéns."
echo 

echo
echo "Indique  o seu nome ou o nome de um  dos membros da sua equipa (use  apenas"
echo "letras minúsculas)."
echo
read -p "Nome: " NOME

echo
echo "Cifre o nome com a ROT3 (ROT ->TRÊS<-) para prosseguir:"
echo
read -p "Resposta: " CIPHER
echo
echo 

DECIPHER=`echo $CIPHER | tr '[D-ZA-Cd-za-c]' '[A-Za-z]'`

if [ "$NOME" != "$DECIPHER" ]; then
	echo "Resposta errada! Tente de novo."
	echo 
	exit 1
fi

echo "Resposta correta! Parabéns."
echo 

echo "O  criptograma seguinte foi obtido a partir da cifra ROT13  (ROT ->TREZE<-)"
echo "de uma  mensagem futebolistica. Consegue decifrá-la?"
echo "Dica: as respostas às perguntas anteriores devem dar uma a juda..."
echo 
echo -n "     "; echo $RESPOSTA |  tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
echo
read -p "Mensagem: " MENSAGEM
echo 

if [ "$RESPOSTA" != "$MENSAGEM" ]; then
	echo "Resposta errada!"
	echo 
	exit 1
fi

cat ../../../../../Files/6.sh >> ../../../../../Files/66.sh
chmod 500 ../../../../../Files/66.sh

echo 

case "$(( RANDOM % 2 ))" in 

	0)
	echo "Siga pelo Alçapão!"
	echo 
	mkdir Alçapão/Escadas
	mkdir Alçapão/Direita
    cp ../../../../../Files/6.exe Alçapão/6.exe
    chmod 100 Alçapão/6.exe
    mv ESTA-AQUI Alçapão/ESTA-AQUI
    ;;

	1)
	echo "Siga pela Esquerda!"
	echo 
	mkdir Esquerda/Escadas
	mkdir Esquerda/Direita
    cp ../../../../../Files/6.exe Esquerda/6.exe
    chmod 100 Esquerda/6.exe
    mv ESTA-AQUI Esquerda/ESTA-AQUI
    ;;

esac

sleep 0.25
echo "A devolver o controlo ao utilizador. Boa sorte!"
echo 
exit 0