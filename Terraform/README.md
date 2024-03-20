# Terraform

Recursos de infraestrutura em nuvem devem sempre ser criados utilizando gerenciadores de configuração, tais como Cloudformation, Terraform ou Ansible, garantindo que todo recurso possa ser versionado e recriado de forma facilitada.

# Objetivo

- Criar uma instância Linux utilizando Terraform.
- A instância deve ter aberta somente às portas 80 e 443 para todos os endereços.
- A porta SSH (22) deve estar acessível somente para um range IP definido.
- Inputs: A execução do projeto deve aceitar dois parâmetros:
  - O IP ou range necessário para a liberação da porta SSH
  - A região da cloud em que será provisionada a instância

- Outputs: A execução deve imprimir o IP público da instância

# Notas

- Todos os recursos devem ser criados utilizando os créditos gratuitos da AWS.
- Não esquecer de destruir os recursos após criação e testes do desafio para não haver cobranças ou esgotamento dos créditos.


## Inputs

- Inseri os inputs requisitados, para escolher o ip que poderá ter o acesso ssh assim como o input para definir a região a qual a infraestrutura será provisionada.
Também inseri um input que solicita qual a Key pair será atrelada à instância, pois sem essa chave atrelada não é possível acessar o ec2 via ssh. Então basta ter uma key pair previamente criada ou adcionada na AWS e inserir o nome dela no input.

## Executando o cenário

- Para executar, basta estar no diretório Terraform e dar o comando `terraform apply` e inserir os inputs solicitados: 

 `IP que poderá se conectar via ssh` = ip que terá a permissão de acessar a instância via ssh, ex: 189.18.8.42

 `Nome da Key Pair para acesso via SSH` = basta inserir o nome da Key Pair, ex: ubuntu_acess

 `Nome da região para provisionamento da insfraestrutura` = Região onde a infraestrutura será criada, ex: us-east-1

 - Após inserir essas informações basta confirmar com um "yes".

 ## Output

 - Após o término da criação da infraestrura será exibida uma mensagem com o ip público da instância criada. Ex: 
 ```
  ec2_global_ips = [
  [
    "44.203.118.51",
  ],
]
```

## Acesso

- Para acessar à instância criada basta seguir o comando de exemplo: `ssh -i "nome-da-key-pair.pem" ubuntu@ec2-44-203-118-51.compute-1.amazonaws.com`



