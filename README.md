# terraform-fiap-trabalho-final


Roteiro para executar e testar o projeto:

Terraform:


Serverless Framework

Executar microservices:

LAMBDA-1 - api criarUsuario {"nome":"matheus"}
 - Entrar na pasta microservices/lambda-1
 - mkdir layer 
 - pip3 install -r requirements.txt -t layer
 - Executar o comando (sls deploy / sls deploy --stage prod)

LAMBDA-2 - escuta fila fiap-lab-trabalho-final-principal e imprime o payload
 - Entrar na pasta microservices/lambda-2
 - mkdir layer 
 - pip3 install -r requirements.txt -t layer
 - Executar o comando (sls deploy / sls deploy --stage prod)

LAMBDA-3 - escuta a fila fiap-lab-trabalho-final-principal-DLQ e publica uma notificação e envia por email.
 - Entrar na pasta microservices/lambda-3
 - mkdir layer 
 - pip3 install -r requirements.txt -t layer
 - Executar o comando (sls deploy / sls deploy --stage prod)

