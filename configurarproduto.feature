#language.pt

Funcionalidade: Configuração de Produto

  Contexto:
    Dado que o usuário está autenticado no sistema
    E o cliente está na página de configuração do produto

  Esquema do Cenário: Cliente configura um produto com diferentes quantidades
    Dado que o cliente acessa a página de um produto
    Quando o cliente seleciona a cor, o tamanho e a quantidade "<quantidade>"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | quantidade | mensagem                               |
      | 1         | Produto configurado com sucesso       |
      | 5         | Produto configurado com sucesso       |
      | 10        | Produto configurado com sucesso       |
      | 11        | Quantidade máxima permitida é 10      |

  Cenário: Cliente tenta adicionar mais de 10 produtos
    Dado que o cliente acessa a página de um produto
    Quando o cliente seleciona uma quantidade maior que 10
    Então o sistema exibe uma mensagem de erro "Quantidade máxima permitida é 10"

  Cenário: Cliente limpa a configuração do produto
    Dado que o cliente acessa a página de um produto
    E o cliente já selecionou a cor, tamanho e quantidade
    Quando o cliente clica no botão "Limpar"
    Então todas as seleções devem voltar ao estado original