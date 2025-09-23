#!/bin/sh

echo 'Passo 1: Baixe a imagem nginx.'
docker pull nginx:latest

echo 'Passo 2: Inicie um contêiner nginx, nomeando-o meu-servidor.'
docker run -d --name servidor-nginx nginx:latest
echo 'Passo 3: Liste todos os contêineres em execução.'
docker ps
echo 'Passo 4: Pare e remova o contêiner.'
docker stop servidor-nginx
echo ' Passo 5: Liste todos os containers.'
docker ps -a
echo ' Fim script'
