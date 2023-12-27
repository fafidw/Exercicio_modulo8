            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que estou na página para finalizar pedido

            Cenário: Finalizar cadastro
            Quando nome* "Stefanie", telefone* "99999-9999", cartão de crédito* "xxxx xxxx xxxx xxxx", endereço "rua blá"
            E o e-mail "fafidw@ebac.com.br"
            Então aparece mensagem "cadastro finalizado"

            Cenário: Cadastro sem os campos obrigatórios
            Quando nome* " ", telefone* "99999-9999", cartão de crédito* "xxxx xxxx xxxx xxxx", endereço "rua blá"
            E o e-mail "fafidw@ebac.com.br"
            Então aparece mensagem "Campo obrigatório não preenchido"

            Cenário: Cadastro sem o e-mail válido
            Quando nome* "Stefanie", telefone* "99999-9999", cartão de crédito* "xxxx xxxx xxxx xxxx", endereço "rua blá"
            E o e-mail "hdsahuish@ebac.com.br"
            Então aparece mensagem "Favor inserir um e-mail válido"

            Esquema do Cenário: Cadastro sem o e-mail válido ou sem os campos obrigatórios preenchidos
            Quando <nome>, <telefone>, <cartão de credito>, <endereço>
            E não preenchido <e-mail> válido
            Então o sistema retorna com uma <mensagem>

            Exemplos:
            | nome  | telefone    | cartão de credito     | endereço | e-mail             | mensagem                   |
            | "Rui" | " "         | "ffff-ffff"           | ""       | "ebac@ebac.com.br" | "Inserir o telefone"       |
            | "Rui" | "9999-9999" | "ffff-ffff-ffff-ffff" | ""       | "ebac@ebac.com.br" | "Inserir um e-mail válido" |



