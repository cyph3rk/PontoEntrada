**FiapShop
MicroServiço Usuários do projeto FiapShop Pós-Fiap 5a fase**

![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring](https://img.shields.io/badge/spring-%236DB33F.svg?style=for-the-badge&logo=spring&logoColor=white)
![Badge em Desenvolvimento](http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge)


*******

<br>


#### &emsp;&emsp; Cadastro Um novo usuário

```shell
curl -i -X POST "http://localhost:8082/auth/register" \
     -H "Content-Type:application/json" \
     -d '{"login": "usuario_novo",
          "role": "ADMIN",
          "password": "1234"
        }'
```

#### &emsp;&emsp; Faz o Login e gera Token de acesso

```shell
curl -i -X POST "http://localhost:8082/auth/login" \
     -H "Content-Type:application/json" \
     -d '{ "login": "usuario_novo",
           "password": "1234"
        }'
```

#### &emsp;&emsp; Quatro comandos para cadastrar três nós itens

```shell
curl -i -X POST "http://localhost:8081/api/itens" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{"nome": "brinquedo 1",
          "valor": "10,00",
          "estoque": "10"
        }'
```

```shell
curl -i -X POST "http://localhost:8081/api/itens" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{"nome": "brinquedo 2",
          "valor": "20,00",
          "estoque": "20"
        }'
```
```shell
curl -i -X POST "http://localhost:8081/api/itens" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{"nome": "brinquedo 3",
          "valor": "30,00",
          "estoque": "30"
        }'
```
```shell
curl -i -X POST "http://localhost:8081/api/itens" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{"nome": "brinquedo 4",
          "valor": "40,00",
          "estoque": "40"
        }'
```

#### &emsp;&emsp; Lista todos os itens cadastrados

```shell
curl -i -X GET "http://localhost:8081/api/itens" \
     -H "Content-Type:application/json"
```

#### &emsp;&emsp; Pega Itens por Id

```shell
curl -i -X GET "http://localhost:8081/api/itens/4" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" 
```

#### &emsp;&emsp; Pega Itens por Nome

```shell
curl -i -X GET "http://localhost:8081/api/itens/nome/brinquedo%204" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" 
```

#### &emsp;&emsp; Deleta Itens por Id

```shell
curl -i -X DELETE "http://localhost:8081/api/itens/4" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" 
```

#### &emsp;&emsp; Soma estoque a um item

```shell
curl -i -X PUT "http://localhost:8081/api/itens/3/10" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" 
```

#### &emsp;&emsp; Três comandos que Adicionam itens no carrinho

```shell
curl -i -X POST "http://localhost:8080/api/carrinho" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{"id_usuario": 2,
          "id_itens": 1,
          "quantidade": "1"
        }'
```
```shell
curl -i -X POST "http://localhost:8080/api/carrinho" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{"id_usuario": 2,
          "id_itens": 2,
          "quantidade": "2"
        }'
```
```shell
curl -i -X POST "http://localhost:8080/api/carrinho" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{"id_usuario": 2,
          "id_itens": 3,
          "quantidade": "3"
        }'
```

#### &emsp;&emsp; Lista os itens no carrinho do usuário

```shell
curl -i -X GET "http://localhost:8080/api/carrinho/2" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw"
```

#### &emsp;&emsp; Deleta um item do carrinho do cliente

```shell
curl -i -X DELETE "http://localhost:8080/api/carrinho" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{"id_usuario": 2,
          "id_itens": 1
         }'
```

#### &emsp;&emsp; Cadastra os itens criados na conta

```shell
curl -i -X POST "http://localhost:8080/api/conta" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{ "data": "2024-03-16T15:30:45.123456789",
           "cliente": "Diego",
           "produto": "Bola",
           "valor": "10,00",
           "quantidade": "3",
           "total": "30,00",
           "situacao": "Pago"
}'
```
```shell
curl -i -X POST "http://localhost:8080/api/conta" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{ "data": "2024-03-16T15:30:45.123456789",
           "cliente": "Diego",
           "produto": "Crrinho",
           "valor": "10,00",
           "quantidade": "1",
           "total": "10,00",
           "situacao": "Pago"
}'
```
```shell
curl -i -X POST "http://localhost:8080/api/conta" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{ "data": "2024-03-16T15:30:45.123456789",
           "cliente": "Diego",
           "produto": "Boneca",
           "valor": "15,00",
           "quantidade": "1",
           "total": "15,00",
           "situacao": "Pago"
}'
```
```shell
curl -i -X POST "http://localhost:8080/api/conta" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw" \
     -d '{ "data": "2024-03-16T15:30:45.123456789",
           "cliente": "Diego",
           "produto": "lapis",
           "valor": "5,00",
           "quantidade": "1",
           "total": "5,00",
           "situacao": "Pago"
}'
```

#### &emsp;&emsp; Deleta um item da conta do cliente

```shell
curl -i -X DELETE "http://localhost:8080/api/conta/2" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw"
```

#### &emsp;&emsp; Lista os itens do conta do usuário

```shell
curl -i -X GET "http://localhost:8080/api/conta/2024-03-16T15:30:45.123456789" \
     -H "Content-Type:application/json" \
     -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhdXRoLWFwaSIsInN1YiI6InVzdWFyaW9fbm92byIsImV4cCI6MTcxMTA3NzgxMn0.V0NJ-pK5B1oEEByvBcgi_yPFXOHoCxpiW_BV6wfJraw"
```