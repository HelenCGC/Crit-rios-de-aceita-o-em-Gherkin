            #Language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho.

            Contexto:
            Dado que eu tenha escolhido os itens desejados para adicionar ao carrinho

            Esquema do Cenário: Configuração do produto com seleções obrigatórias
            Quando eu selecionar a <cor>
            E o <tamanho>
            E a <quantidade>
            E clicar em comprar
            Então deve  exibir "O item foi adicionado ao carrinho com sucesso"

            Esquema do Cenário: Configuração do produto sem seleções obrigatórias
            Quando eu clicar em comprar
            Mas não selecionar a <cor>
            E o <tamanho>
            E a <quantidade>
            Então deve  exibir "A seleção de cor, tamanho e quantidade são obrigatórias"

            Exemplos:
            | cor         | tamanho | quantidade |
            | "Azul"      | "XS"    | "1"        |
            | "Laranjado" | "S"     | "2"        |
            | "Vermelho"  | "M"     | "3"        |
            |             | "L"     | "4"        |
            |             | "XL"    | "5"        |
            |             |         | "6"        |
            |             |         | "7"        |
            |             |         | "8"        |
            |             |         | "9"        |
            |             |         | "10"       |

Cenário: 10 produtos por venda
Quando eu adiconar um total de 1o itens ao carrinho
E tentar adicionar mais algum item
Então deve exibir "O máximo de 10 produtos já foi alcançado. Por favor, prossiga com o pagamento"

Cenário: Limpar
Quando eu clicar no botão limpar
E confirmar a minha opção
Então as configurações do produto voltarão ao estado original e deve exibir "Por favor selecione cor, tamanho e quantidade desejados"