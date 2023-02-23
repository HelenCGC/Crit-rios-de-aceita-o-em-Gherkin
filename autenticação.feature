#language: pt

Funcionalidade: Fazer o login (autenticação) na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que eu esteja na página de autenticação da plataforma para fazer login

Cenário: Dados válidos
Quando eu digitar o usário "helen@ebac.com.br"
E a senha "Helen123."
Então deve exibir uma mensagem de "Olá, Helen" e me redicionar para a página de checkout.

Cenário: Dados inválidos
Quando eu digitar o usário "helen@ebac.com.br"
E a senha "helen123"
Então deve exibir uma mensagem de "Usuário ou senha inválidos"

