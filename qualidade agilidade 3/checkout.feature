            Funcionalidade: Configuração e adição de produtos ao carrinho
            Como cliente da Ebac-Shop
            Quero configurar o produto de acordo com meu tamanho e preferências
            E escolher a quantidade desejada
            Para adicioná-lo ao carrinho de compras

            Cenário: Tamanho e cor obrigatórios
            Dado que acesso o site da Ebac-Shop
            Quando escolho um produto
            Então deve aparecer uma mensagem orientando a escolha do tamanho e da cor

            Cenário: Limite de até 10 produtos por venda
            Dado que acesso a pagina dos produtos
            Quando adiciono produtos até atingir a quantidade máxima permitida pelo site
            Então deve aparecer a mensagem: "Limite máximo atingido"

            Cenário: Botão "Limpar" deve reiniciar o carrinho
            Dado que acesso o carrinho da Ebac-Shop
            Quando clico no botão "Limpar"
            Então deve aparecer a mensagem: "Carrinho limpo com sucesso"

            Cenário: Adicionar múltiplos produtos em uma mesma venda
            Dado que acesso a lista de produtos da Ebac-Shop
            Quando escolho um produto com <tamanho> e <cor> e adiciono ao carrinho
            Então deve exibir a <mensagem>

            | produto  | cor     | tamanho | quantidade carrinho | mensagem                            |
            | camiseta | verde   | G       | 1 produto           | "produto no carrinho atualmente"    |
            | calça    | laranja | m       | 2 produtos          | "2 produtos no carrinho atualmente" |
            | shorts   | preta   | P       | 3 produtos          | "3 produtos no carrinho atualmente" |
            | blusa    | preta   | g       | 4 produtos          | "4 produtos no carrinho atualmente" |