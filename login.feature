            #linguage:pt

            Funcionalidade: login na plataforma 

            Como aluno do portal EBAC
            Quero me autenticar
            Para visualizar meus pedidos

                       
            Contexto:

            Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joão@ebac.com.br"
            E a senha "@123"
            Então deve exibir a mensagem de boas vindas "Olá joão!"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "chsgfhs@ebac.com.br"
            E a senha "@123"
            Então deve exibir a mensagem "Usário Inexistente!"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joão@ebac.com.br"
            E a senha "@1234526"
            Então deve exibir a mensagem "Usuário ou senha inválida!"

            Esquema do Cenário: Autenticar multiplos usuário
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir <mensagem> de sucesso
            
            Exemplos:
            | usário             | senha      |mensagem   |
            | "joão@ebac.com.br" | "@1234526" |"Olá João!"|







