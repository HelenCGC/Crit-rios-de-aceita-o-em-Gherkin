            #language: pt

            Funcionalidade: Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu esteja na página de cadastro para checkout

            Esquema do Cenário: Coleta de dados obrigatórios
            Quando eu preencher o cadastro com <Nome>, <Sobrenome>, <Pais>, <Endereco>, <Cidade>, <CEP>, <Telefone>, <Email>
            E clicar no botão Finalizar compra
            Então deve  exibir a mensagem "Sua compra será finalizada com sucesso"

            Exemplos:
            | Nome      | Sobrenome | Pais     | Endereco             | Cidade           | CEP         | Telefone    | Email                 |
            | "Aline"   | "Bezerra" | "Brasil" | "Rua da alegria 3"   | "São Paulo"      | "02201-000" | "911112222" | aline.b@ebac.com.br   |
            | "Bruno"   | "Coelho"  | "Brasil" | "Calçada da fama 15" | "Fortaleza"      | "60110-974" | "922223333" | bruno.c@ebac.com.br   |
            | "Carla"   | "Pinto"   | "Brasil" | "Avenida do amor 55" | "Brasília"       | "71070120"  | "933334444" | carla.p@ebac.com.br   |
            | "Dorival" | "Leão"    | "Brasil" | "Rua da emoção 8"    | "Rio de Janeiro" | "20550-900" | "944445555" | dorival.l@ebac.com.br |

Cenário: Campo email inválido
Quando eu preencher o cadastro
Mas digitar o <Email> com formato inválido
Então deve  exibir uma mensagem "Por favor verifique a informação digitada no campo endereço de e-mail"

Cenário: Campos vazios
Quando eu clicar em finalizar compra
E algum dos campos não obrigatórios estiver em branco
Então deve  exibir uma mensagem de alerta "Atenção, há campos que não foram preenchidos"