# Veek - QA Test

O teste consiste na automatização do acesso a dois endpoints. Os cenários em BDD estão disponíveis em "/specs/app". O boilerplate já possui todas as ferramentas, frameworks e bibliotecas necessárias para a realização do teste.


## Documentação da API

Os endpoints são Mocks do framework VCR, portanto, não podem ser acessados de fora do projeto. (não há como acessar via Postman ou Browser). Todos os responses estão alocados em "/features/cassettes".


### Endpoint - http://app.auth/login
METHOD - POST

Request body:

    {
      "email": "String",
      "password": "String"
    }


Status Code Responses:
- 200 - OK
- 400 - Request was not validated
- 422 - Email is required
- 422 - Password is required



### Endpoint - https://app.account/me
Method - GET

Response body:

    {
      "user_id": "String",
      "name": "String",
      "email": "String",
      "password": "String",
      "userState": "String",
      "userPlan": "String",
      "phone": 0
    }


Status Code Responses:
- 200 - OK
- 400 - Request was not validated



## Como iniciar?

- Clone o repositório
- Crie uma branch 'veek-qa-nome' a partir da branch Master
- Instale as dependências do projeto com o comando "bundle install"
- Ao finalizar o teste, faça seu commit, e um push da sua branch
- Todas as ferramentas necessárias par aa conclusão do teste como frameworks e bibliotecas já estão inclusas no Gemfile, mas nã há obrigatoriedade em usar somente o que já vem no Bundle.
