clear
echo 
echo "                   ..-''-....* Nível 6 *....-''-.."
cat ../../../../../../Files/short-logo.txt
echo
echo
echo "Parabéns:  Chegou ao nível 6! Para chegar ao nível 7 terá de responder  a"
echo "três perguntas de resposta múltipla, uma de resposta direta e ainda"
echo "codificar uma frase."
echo

echo 
echo "A cifra RSA deriva o seu nome dos seus autores. Quem são eles?"
echo "Dica: experimente procurar no Google..."
echo
echo "    1. Ron Weasley, Donald Sumpter e Leonard Cohen."    
echo "    2. Ron Rivest, Adi Shamir e Leonard Adleman."
echo "    3. Ralph Merkle, Vincent Rijmen e Leonard Adleman ."    
echo "    4. Bill Gates, Steve Jobs e Jeff Bezzos."
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
echo "Qual paradigma da computação é o grande inimigo de grande parte da" 
echo "criptografia moderna?"
echo
echo "    1. Computação Distribuída.                        2. Computação na Cloud."
echo "    3. Computação orientada à cebola (faz chorar).    4. Computação Quântica."
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
echo "Há um tipo de curvas algébricas (matemáticas) que são muito usadas em criptografia."
echo "Qual o nome destas curvas:"
echo "    1. Rectas.       2. Quadráticas."
echo "    3. Elípticas.    4. Hiperbólicas."
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

echo
echo "Escreva um provérbio português que conheça:"
echo
read -p "Provérbio: " PROV

HASHED=`echo $PROV | sha1sum`

echo
echo "Calcule o hash do provérbio com a função SHA-1 e escreva-o abaixo (dica: o "
echo "comando para calcular o hash é o sha1sum, e pode ser usado de forma "
echo "semelhante ao base64):"
echo
read -p "Resposta: " HASH
echo
echo 

if [[ "$HASHED" =~ $HASH ]]; then
	echo "Resposta correta! Parabéns."
	echo 
else
	echo "Resposta Errada! Tente de novo."
	echo
	exit 1
fi 

cp ../../../../../../Files/7.sh ../../../../../../Files/77.sh
chmod 500 ../../../../../../Files/77.sh

echo 

case "$(( RANDOM % 2 ))" in 

	0)
	echo "Siga pelas Escadas!"
	echo 
    cp ../../../../../../Files/7.exe Escadas/7.exe
    chmod 100 Escadas/7.exe
    mv ESTA-AQUI Escadas/ESTA-AQUI
    ;;

	1)
	echo "Siga pela Direita!"
	echo 
    cp ../../../../../../Files/7.exe Direita/7.exe
    chmod 100 Direita/7.exe
    mv ESTA-AQUI Direita/ESTA-AQUI
    ;;

esac

sleep 0.25
echo "A devolver o controlo ao utilizador. Boa sorte!"
echo 
exit 0
