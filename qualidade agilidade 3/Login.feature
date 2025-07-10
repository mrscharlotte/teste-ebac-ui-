            # language: pt

            Funcionalidade: Tela de Login
            Como um cliente da Ebac-Shop
            Quero fazer login na plataforma
            Para visualizar meus pedidos

            Cenário: Login com dados válidos
            Dado que acesso o site da Ebac-Shop
            Quando insiro o e-mail "mariazinha@loja.com" e a senha "mariazinha123"
            Entao o site deve exibir uma mensagem de login com sucesso



            Cenário: Login com dados inválidos
            Dado que acesso o site da Ebac-Shop
            Quando insiro o e-mail "mari@loja.com" e a senha "maraizinha123"
            Então deve aparecer a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Validação de múltiplos logins com diferentes modelos de autenticação
            Dado que estou no pagina de login
            Quando digito <usuario>, <senha> e confirmo os dados
            Então o sistema deve solicitar a verificação via <modelo de checkout> e <enviar o codigo>
            exemplos:
            | Usuário    | Senha        | Modelo de Checkout | Código | mensagem                     |
            | mariazinha | maria\@123   | SMS                | 202296 | "login efetuado com sucesso" |
            | joaozinha  | joao123      | E-mail             | 509944 | "login efetuado com sucesso" |
            | vitor      | vitor2025    | SMS                | 609944 | "login efetuado com sucesso" |
            | marcelin   | marcelin6522 | E-mail             | 009944 | "login efetuado com sucesso" |



