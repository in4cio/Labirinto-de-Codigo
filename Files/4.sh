clear
echo 
echo "                   ..-''-....* Nível 4 *....-''-.."
cat ../../../../Files/short-logo.txt
echo
echo
echo "Parabéns:  Chegou  ao nível 4! Para chegar ao nível 5 terá de  responder  a"
echo "duas  perguntas  de  resposta  múltipla,  uma  de  resposta  direta e ainda"
echo "descodificar um código."
echo

echo 
echo "Que comando pode usar para CODIFICAR a mensagem 123 na base64 em Linux?"
echo "Dica: experimente cada um dos comandos."
echo
echo "    1   > base64 | echo 123          2   > base64 123"
echo "    3   > cat 123 | base64           4   > echo 123 | base64"
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
echo "Indique a codificação da mensagem 123 na base64 para evoluir."
echo
read -p "Resposta: " CODE
echo
echo 

if [ "$CODE" != "MTIzCg==" ]; then
	echo "Resposta errada! Tente de novo."
	echo 
	exit 1
fi

echo "Resposta correta! Parabéns."
echo 

echo
echo "Em  muitos  comandos  usados no Linux é possível obter ajuda  sobre  o  seu"
echo "funcionamento escrevendo --help à frente do comando. P.e.,"
echo "> base64 --help"
echo
echo "Qual a opção do comando base64 que permite DEScodificar uma mensagem?"
echo
echo "    1. -desc    2. -d    3. -c    4. -f    5. -decode"
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

echo "O   código  seguinte   contém  a  representação  em   base64  de  uma   das"
echo "palavras-passe mais usadas da atualidade. Consegue descodificá-la?"
echo "Dica: as respostas às perguntas anteriores devem dar uma ajuda..."
echo 
echo -n "     "; echo -n $RESPOSTA | base64
echo
read -p "Palavra-passe: " PASSWORD
echo 

if [ "$RESPOSTA" != "$PASSWORD" ]; then
	echo "Resposta errada!"
	echo 
	exit 1
fi

cp ../../../../Files/5.sh ../../../../Files/55.sh
chmod 500 ../../../../Files/55.sh

echo 

case "$(( RANDOM % 2 ))" in 

	0)
	echo "Siga pela Direita!"
	echo 
	mkdir Direita/Esquerda
	mkdir Direita/Alçapão
    cp ../../../../Files/5.exe Direita/5.exe
    chmod 100 Direita/5.exe
    mv ESTA-AQUI Direita/ESTA-AQUI
    ;;

	1)
	echo "Siga pela Retaguarda!"
	echo 
	mkdir Retaguarda/Esquerda
	mkdir Retaguarda/Alçapão
    cp ../../../../Files/5.exe Retaguarda/5.exe
    chmod 100 Retaguarda/5.exe
    mv ESTA-AQUI Retaguarda/ESTA-AQUI
    ;;

esac

sleep 0.25
echo "A devolver o controlo ao utilizador. Boa sorte!"
echo 
exit 0