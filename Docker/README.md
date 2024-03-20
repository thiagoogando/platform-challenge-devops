
# Objetivo

Dentro deste repositório existe um subdiretório app e um Dockerfile que constrói essa imagem, seu objetivo é:

# Construir a imagem docker da aplicação

- Criar um script para a execução do deploy em uma única execução.
- Fazer com que a aplicação exiba seu nome ao invés de "Olá, candidato!".

# Nota

- Não é necessário realizar o upload da imagem Docker para um registro público, você pode construir a imagem localmente e utilizá-la diretamente!


## Desafios

- Primeiro eu acrescentei a função ```require("os").userInfo().username``` para pegar o nome de usuário atual do S.O., quando executado por container vai ser exibido o nome de usuário do container. Também acrescentei o const ```port = process.env.PORT``` para deixar mais dinâmica a escolha da porta que a aplicação vai rodar, então ao executar a imagem basta passar o parâmetro `-e PORT=` seguido da porta que desejo usar, podendo assim alterar a porta sem precisar refazer a imagem.

- Mas para rodar o app.js foi necessária a instalação do `express`

- No Dockerfile alterei a versão do Node Alpine para uma versão mais atual por questões de segurança, pois nas imagens node-9-alpine tem uma vulnerabilidade de segurança (CVE-2017-16544).
Também por questão de segurança criei um novo usuário dentro do container para não executá-lo como um usuário root.

## Execução

- Para executar o script que cria e a imagem docker com o app.js basta usar o comando ```bash script.sh``` dentro do diretório Script