
# Micro serviço para cálculo de taxas

Olá! 🧑‍💻

Este repositório contém um micro serviço desenvolvido em Go para cálculo de taxas. Caso queira testar esse micro serviço na sua máquina você pode rodar 90% das dependências via docker usando o docker-compose, o único requisito necessário dentro da sua máquina será o sqlite.

## Como instalar e testar

Primeiro faça o download do código, após isso abra a pasta no seu terminal ou vs-code, na raíz do projeto utilize o comando `docker-compose up -d` esse comando vai baixar as imagens do docker e subir os containers necessários, depois de instalar os containers vamos criar o arquivo do sqlite, para isso execute `sqlite orders.db` e dentro do terminal do sqlite rode a seguinte query:

`CREATE TABLE orders (id varchar(255) NOT NULL, price float NOT NULL, tax float NOT NULL, final_price float NOT NULL, PRIMARY KEY (id));`

Essa query vai criar nossa tabela no banco de dados. Após finalizar essa etapa, voltamos pro nosso terminal bash e executamos o seguinte comando: `docker-compose exec goapp bash` com esse comando vamos entrar dentro do terminal da nossa imagem go no container, feito isso basta então rodar o comando `go run cmd/consumer/main.go` quando aparecerem as mensagens: "kafka consumer has started" e "Rabbitmq worker has started" nosso micro serviço estará pronto.

Você pode acessar as portas do Kafka e Rabbitmq conforme estão no docker-compose.yaml.

## Techs


![go](https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white)

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

![rabbitmq](https://img.shields.io/badge/rabbitmq-%23FF6600.svg?&style=for-the-badge&logo=rabbitmq&logoColor=white)

![Apache Kafka](https://img.shields.io/badge/Apache%20Kafka-000?style=for-the-badge&logo=apachekafka)

