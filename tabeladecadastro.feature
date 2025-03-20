#language.pt

Funcionalidade: Cadastro de Cliente EBAC

  Contexto:
    Dado que o cliente está na página de cadastro

  Cenário: Cadastro com todos os dados obrigatórios preenchidos
    Quando o cliente preenche todos os campos obrigatórios marcados com asterisco
    E clica no botão "Cadastrar"
    Então o sistema deve cadastrar o cliente com sucesso

  Esquema do Cenário: Cadastro com e-mail inválido
    Quando o cliente preenche o campo de  <e-mail>  com um formato inválido
    E clica no botão "Cadastrar"
    Então o sistema deve exibir uma  <mensagem>  "Formato de e-mail inválido"

    Exemplos:
      | email            | mensagem                    |
      | testeemail.com   | Formato de e-mail inválido |
      | usuario@.com     | Formato de e-mail inválido |
      | @dominio.com     | Formato de e-mail inválido |
      | usuario@dominio  | Formato de e-mail inválido |

  Cenário: Cadastro com campos obrigatórios vazios
    Quando o cliente não preenche um ou mais campos obrigatórios
    E clica no botão "Cadastrar"
    Então o sistema deve exibir uma mensagem de alerta "Preenchimento obrigatório"
