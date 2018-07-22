Quando("eu faço uma solicitação Get para o serviço me") do
  @header = @metodos.header_acessar_conta
  uri = ACESSO["http_interactions"][0]["request"]["uri"]

  RestClient.get(uri, @header) do |response, request|
    @response = response
    @body = JSON.parse(@response)
  end
    
  end
  
  Então("o código de resposta HTTP deve ser igual a {string}") do |code|
    if @response.code == code.to_i
      puts "Retorno esperado, OK! #{@response.code}"
    else
      raise "Erro, http response code: #{@response.code}"
    end
  end
  
  Então("devo visualizar um json com os dados da conta conforme o contrato da API") do
    #Mostrando no terminal o response
    puts @body
    #Validando o conteúdo retornado da API utilizando rspec
    @metodos.valida_response_get(@body)
  end