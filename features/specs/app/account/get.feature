#language: pt

Funcionalidade: Acesso à Conta
    Sendo uma aplicação cliente
    Posso solicitar requisições Get para o serviço me
    Para que o usuário acesse sua conta

    @vcr @account @teste
    Cenário: Acessar Conta
        Quando eu faço uma solicitação Get para o serviço me
        Então o código de resposta HTTP deve ser igual a "200"
        E devo visualizar um json com os dados da conta conforme o contrato da API
