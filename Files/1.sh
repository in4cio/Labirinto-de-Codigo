clear
echo 
echo "                   ..-''-....* Nível 1 *....-''-.."
cat ../Files/short-logo.txt
echo
echo
echo "Parabéns:  Chegou  ao nível 1! Para chegar ao nível 2 terá de  responder  a"
echo "uma pergunta de escolha múltipla e descodificar um código."
echo 
echo 

echo "Como se chama o criador do Linux?"
echo
echo "    1 - James Bond.           2 - Richard Stallman."
echo "    3 - Linus Torvalds.       4 - Pedro Inácio."
echo 
read -p "Resposta: " NUMERO
echo
echo 

if [ $NUMERO -ne 3 ]; then
	echo "Resposta errada! Tente de novo."
	echo 
	exit 1
fi

echo "Resposta correta! Parabéns."
echo 
echo "O  código  seguinte  tem o nome de um herói  cinematográfico  conhecido.  O"
echo "código  mostra  os  valores *decimais* dos caracteres  em  ASCII.  Consegue"
echo "descodificar se procurar uma tabela ASCII na Internet..."
echo 
echo -n "     "; echo -n $RESPOSTA | od -An -t uC 
echo
read -p "Nome do herói: " NOME
echo 

if [ "$RESPOSTA" != "$NOME" ]; then
	echo "Resposta errada!"
	echo 
	exit 1
fi

case "$(( ( RANDOM % 4 )  + 1 ))" in 

	1) echo "#!/bin/bash" > ../Files/22.sh
    echo "" >> ../Files/22.sh
    echo "RESPOSTA='Son Goku'" >> ../Files/22.sh
	;;

	2) echo "#!/bin/bash" > ../Files/22.sh
    echo "" >> ../Files/22.sh
    echo "RESPOSTA='Son Gohan'" >> ../Files/22.sh
    ;;

	3) echo "#!/bin/bash" > ../Files/22.sh
    echo "" >> ../Files/22.sh
    echo "RESPOSTA='Vegeta'" >> ../Files/22.sh
    ;;

	4) echo "#!/bin/bash" > ../Files/22.sh
    echo "" >> ../Files/22.sh
    echo "RESPOSTA='Krillin'" >> ../Files/22.sh
    ;;
esac

cat ../Files/2.sh >> ../Files/22.sh
chmod 500 ../Files/22.sh

echo 
if [ $(( RANDOM % 2 )) -eq 0 ]; then	
	echo "Siga pela Direita!"
	echo 
	mkdir Direita/Cima
	mkdir Direita/Baixo
	mkdir Direita/Frente
    cp ../Files/2.exe Direita/2.exe
    chmod 100 Direita/2.exe
    mv ESTA-AQUI Direita/ESTA-AQUI
    sleep 0.25
    echo "A devolver o controlo ao utilizador. Boa sorte!"
    echo 
	exit 0
fi

echo "Siga pela Esquerda!"
mkdir Esquerda/Cima
mkdir Esquerda/Baixo
mkdir Esquerda/Frente
cp ../Files/2.exe Esquerda/2.exe
chmod 100 Esquerda/2.exe
mv ESTA-AQUI Esquerda/ESTA-AQUI
sleep 0.25
echo "A devolver o controlo ao utilizador. Boa sorte!"
echo 

exit 0