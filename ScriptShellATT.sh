while [ TRUE ]
do
echo "Bem vindo ao instalador da Track Vision"
echo "Escolha 1 das seguintes opções \n
      1- Instalar Java
      2 - Atualizar os pacotes Linux
      3 - Baixar Projeto
      4 - Sair"
read -p "Digite a sua escolha: " ESCOLHA

if [ -n "$ESCOLHA" ];
then
   if [ $ESCOLHA -eq 1 ];
   then
        clear
        echo "Instalando o Java"
        sleep 3
        sudo add-apt-repository ppa:webupd8team/java -y
        echo "Quase Finalizando a Instalação"
        sleep 3
        sudo apt update -y
        echo "Instalando o Java 11"
        sudo apt install default-jre ; apt install openjdk-11-jre-headless; -y


   elif [ $ESCOLHA -eq 2 ];
    then
        clear
        echo "Atualizando os Pacotes Linux"
        sleep 3
        sudo apt update && sudo apt upgrade


   elif [ $ESCOLHA -eq 3 ];
     then
        clear
        echo "Baixando o projeto ..."
        sleep 3
        git clone https://github.com/PedroMoretti12/TRACK-VISION.git       

   else
           echo "Opção Inválida, Encerrando o Instalador"
           sleep 3
           break
   fi
else
    echo "Opção Vazia"
fi
done