            Funcionalidade: Cadastro no site
            Como cliente da EBAC-Shop
            Quero concluir meu cadastro
            Para finalizar minha compra

            Cenário: Cadastro com todos os dados obrigatórios preenchidos
            Dado que acesso o site de cadastro da EBAC-Shop
            Quando preencho todos os campos obrigatórios: "nome, e-mail, telefone, data de nascimento"
            Então deve aparecer a mensagem: "Cadastro feito com sucesso"

            Cenário: E-mail com formato inválido
            Dado que acesso o site de cadastro da EBAC-Shop
            Quando insiro o e-mail "joaovictror@correa delima"
            Então o sistema deve validar o formato do e-mail e exibir uma mensagem de erro


            Cenário: Cadastro com campos vazios
            Dado que acesso o site de cadastro da ebac shop
            Quando insiro <nome>,<email> e <nascimento>
            Entao o sistema deve mandar a <mensagem>

            | nome    | email        | nascimento | mensagem                                  |
            | marcela | marcelin@123 | 25/04/2002 | "cadastro efetuado com sucesso"           |
            | joao    | -----        | 29/04/2002 | "erro por favor prencher todos os campos" |
            | -----   | tacio@321    | 17/02/2000 | "erro por favor prencher todos os campos" |
            | rafa    | rafael@gmail | --------   | "erro por favor prencher todos os campos" |