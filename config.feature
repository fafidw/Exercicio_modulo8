            #language: pt
            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade de até no máximo 10 itens
            Para depois inserir no carrinho

            Contexto:
            Dado que ao acessar a página possa editar, inserir produto no carrinho de compras

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu escolher o produto "camisa", "P", "azul"
            E a quantidade de "1"
            Então ao clicar em comprar o produto vai para o carrinho de compras

            Cenário: Não selecionar alguma das opções de cor, tamanho e quantidade devem ser obrigatórios
            Quando eu escolher o produto "camisa", "P", "azul"
            E a quantidade de " "
            Então ao clicar em comprar aparece "Você não selecionou a quantidade"

    