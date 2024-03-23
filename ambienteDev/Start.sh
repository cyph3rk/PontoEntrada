#!/bin/bash

# Diretório do projeto
diretorio_projeto="FiapShop"

# Cria o diretório se ele não existir
mkdir -p "$diretorio_projeto"

# Entra no diretório
cd "$diretorio_projeto" || exit

# URL dos repositórios Git
url_repositorio_PontoEntrada="https://github.com/cyph3rk/PontoEntrada.git"
url_repositorio_GerenteItens="https://github.com/cyph3rk/gerente_Itens.git"
url_repositorio_GerenteUsuario="https://github.com/cyph3rk/gerente_usuarios.git"
url_repositorio_GerenteCarrinho="https://github.com/cyph3rk/gerente_carrinho.git"

# Clona os repositórios
git clone "$url_repositorio_PontoEntrada"
git clone "$url_repositorio_GerenteItens"
git clone "$url_repositorio_GerenteUsuario"
git clone "$url_repositorio_GerenteCarrinho"

# Verifica se o clone foi bem-sucedido
if [ $? -eq 0 ]; then
    echo "Repositório clonado com sucesso em '$PWD'"
else
    echo "Erro ao clonar o repositório. Por favor, verifique a sua conexão com a internet."
fi

cd PontoEntrada/ambienteDev || exit
docker compose up