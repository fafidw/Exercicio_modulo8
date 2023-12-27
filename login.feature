#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: 
Dado que estou na página de login

Cenário: Login válido
Quando eu inserir o usuário "fafidw@ebac.com.br"
E a senha "1234"
Então sou direcionado à minha conta

Esquema do Cenario: Autenticar multiplos usuários
Quando eu inserir o <usuario>
E a <senha>
Então exibe uma <mensagem>

Exemplos:
|usuario|senha|mensagem|
|"andre@ebac.com.br"|"M1596"|"Seja bem-vindo"|
|"lia@ebac.com.br"|"gafas"|"Seja bem-vindo"|

Cenário: Usuário inválido
Quando eu inserir o usuário "fdsfrfgv@ebac.com.br"
E a senha "1234"
Então exibir mensagem de erro

Esquema do Cenario: Invalidar multiplos usuários
Quando eu inserir o <usuario>
E a <senha>
Então exibe uma <mensagem>

Exemplos:
|usuario|senha|mensagem|
|"vdsfsdf@ebac.com.br"|"M1596"|"Usuário inexistente"|
|"lvdvsadcv@ebac.com.br"|"gafas"|"Usuário inexistente"|

Cenário: Senha inválida
Quando eu inserir o usuário "fafidw@ebac.com.br"
E a senha "1rteg"
Então exibir mensagem de erro

Esquema do Cenario: Invalidar multiplas senhas
Quando eu inserir o <usuario>
E a <senha>
Então exibe uma <mensagem>

Exemplos:
|usuario|senha|mensagem|
|"andre@ebac.com.br"|"M1596"|"Senha inválida"|
|"lia@ebac.com.br"|"gafas"|"Senha inválida"|