clear
echo 
echo "                   ..-''-....* Nível 7 *....-''-.."
cat ../../../../../../../Files/short-logo.txt
echo
echo
echo "Parabéns:  chegou  ao último nível!  A saída do labirinto irá  aparecer  se"
echo "resolver corretamente um último desafio."
echo

echo 
echo "Neste  nível  vai  encontrar alguns ficheiros dentro  da  diretoria  atual."
echo "Investigue-os a todos!"
echo "Um dos ficheiros chama-se criptograma.aes e contém uma mensagem cifrada. Se"
echo "a conseguir decifrar, termina o labirinto."
echo
echo "O  Linux  contém  uma ferramenta para cifrar e decifrar  ficheiros  chamada"
echo "openssl. Para decifrar um ficheiro pode usar um comando parecido com"
echo 
echo "    > openssl enc -aes-128-ctr -K chave -iv 0 -in nome-ficheiro-a-decifrar"
echo 
echo "Sabendo  tudo isto, construa o comando que lhe permite decifrar o  ficheiro"
echo "com o criptograma, e escreva o número que está lá dentro a seguir!"
echo 

if [ ! -f criptograma.aes ]; then
	RESPOSTA=$(( RANDOM % 200 ))
	echo $RESPOSTA > mensagem.txt
	echo "123456789abcdef" > chave.txt
	openssl enc -aes-128-ctr -K 123456789abcdef -in mensagem.txt -out criptograma.aes -iv 0
	rm mensagem.txt
else
	RESPOSTA=`openssl enc -aes-128-ctr -K 123456789abcdef -in criptograma.aes -iv 0`
fi

read -p "Número: " NUMERO
echo 

if [ "$RESPOSTA" != "$NUMERO" ]; then
	echo "Resposta errada! Recomece."
	echo 
	exit 1
fi

echo 
echo "Muitos PARABÉNS! Siga para o Fim!"
mkdir Fim
mv ESTA-AQUI Fim/ESTA-AQUI
touch Fim/PARABENS

sleep 0.25
echo
echo "A devolver o controlo ao utilizador."
echo 
exit 0