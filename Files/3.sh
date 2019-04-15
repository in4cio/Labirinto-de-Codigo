clear
echo 
echo "                   ..-''-....* Nível 3 *....-''-.."
cat ../../../Files/short-logo.txt
echo
echo
echo "Parabéns:  Chegou  ao nível 3! Para chegar ao nível 4 terá de  responder  a"
echo "quatro  perguntas  de  escolha múltipla, uma de resposta  direta,  e  ainda"
echo "descodificar um código."
echo

echo 
echo "Que comando pode usar para criar uma diretoria em Linux?"
echo
echo "    1 - dir           2 - mkdir"
echo "    3 - dodir         4 - cair"
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
echo "Que comando pode ser usado para criar um ficheiro?"
echo
echo "    1 - cat           2 - ls"
echo "    3 - mkfile        4 - touch"
echo 
read -p "Resposta: " NUMERO
echo
echo 

if [ $NUMERO -ne 4 ]; then
	echo "Resposta errada! Tente de novo."
	echo 
	exit 1
fi

echo "Resposta correta! Parabéns."
echo 

echo
echo "O Linux tem um comando chamado wc. Para que serve?"
echo
echo "    1 - Para ir à casa de banho.  2 - Para eliminar ficheiros."
echo "    3 - Para absolutamente nada.  4 - Para contar palavras em ficheiros."
echo 
read -p "Resposta: " NUMERO
echo
echo 

if [ $NUMERO -ne 4 ]; then
	echo "Resposta errada! Tente de novo."
	echo 
	exit 1
fi

echo "Resposta correta! Parabéns."
echo 

echo
echo "Que número está dentro do ficheiro ola.txt da sua diretoria atual?"
echo
read -p "Resposta: " NUMERO
echo
echo 

if [ $NUMERO -ne 12589 ]; then
	echo "Resposta errada! Tente de novo."
	echo 
	exit 1
fi

echo "Resposta correta! Parabéns."
echo 

echo
echo "Qual a distribuição de Linux mais popular?"
echo "Dica: considere visitar https://distrowatch.com/."
echo
echo " 1 - Solus     2 - Debian    3 - Manjaro   4 - Ubuntu      5 - openSUSE"
echo " 6 - Zorin     7 - Fedora    8 - deepin    9 - Antergos   10 - elementary"
echo "11 - CentOS   12 - Mint     13 - Arch     14 - PCLinuxOS  15 - ReactOS"
echo "16 - Lite     17 - Mageia   18 - KDE neon"
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

echo "O código seguinte contém o nome de um(a) cantor(a) conhecida da atualidade."
echo "O  código  mostra  os  valores *octal* dos caracteres  em  ASCII.  Consegue"
echo "descodificar e indicar o nome do(a) cantor(a)?"
echo "Dica: uma tabela ASCII vinha mesmo a calhar..."
echo 
echo -n "     "; echo -n $RESPOSTA | od -An -t o1
echo
read -p "Nome do(a) cantor(a): " NOME
echo 

if [ "$RESPOSTA" != "$NOME" ]; then
	echo "Resposta errada!"
	echo 
	exit 1
fi

case "$(( ( RANDOM % 4 )  + 1 ))" in 

	1) echo "#!/bin/bash" > ../../../Files/44.sh
    echo "" >> ../../../Files/44.sh
    echo "RESPOSTA='password'" >> ../../../Files/44.sh
	;;

	2) echo "#!/bin/bash" > ../../../Files/44.sh
    echo "" >> ../../../Files/44.sh
    echo "RESPOSTA='test123'" >> ../../../Files/44.sh
    ;;

	3) echo "#!/bin/bash" > ../../../Files/44.sh
    echo "" >> ../../../Files/44.sh
    echo "RESPOSTA='superman'" >> ../../../Files/44.sh
    ;;

	4) echo "#!/bin/bash" > ../../../Files/44.sh
    echo "" >> ../../../Files/44.sh
    echo "RESPOSTA='letmein'" >> ../../../Files/44.sh
    ;;
esac

cat ../../../Files/4.sh >> ../../../Files/44.sh
chmod 500 ../../../Files/44.sh

echo 

case "$(( RANDOM % 2 ))" in 

	0)
	echo "Siga pela Diagonal!"
	echo 
	mkdir Diagonal/Direita
	mkdir Diagonal/Retaguarda
    cp ../../../Files/4.exe Diagonal/4.exe
    chmod 100 Diagonal/4.exe
    mv ESTA-AQUI Diagonal/ESTA-AQUI
    ;;

	1)
	echo "Siga pela Obliqua!"
	echo 
	mkdir Obliqua/Direita
	mkdir Obliqua/Retaguarda
    cp ../../../Files/4.exe Obliqua/4.exe
    chmod 100 Obliqua/4.exe
    mv ESTA-AQUI Obliqua/ESTA-AQUI
    ;;

esac

sleep 0.25
echo "A devolver o controlo ao utilizador. Boa sorte!"
echo 
exit 0