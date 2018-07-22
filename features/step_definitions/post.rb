Dado("que o usuário se informou os seguintes dados:") do |table|
  @header = @metodos.header_autenticar
  @url = DATA['url_base']
  data = table.raw
end

Dado("que o usuário se informou os seguintes dados de {string} e {string}") do |email, password|
  @url = DATA['url_base']
  @header = @metodos.header_autenticar
    if email == DATA["email_correto"] && password == DATA["password_correto"]
      @body = eval(File.read(DATA['body']['payload_autenticacao_ok']))
    else 
      @metodos.escolhe_payload(email, password)
    end
end

Quando("eu faço uma solicitação POST para o serviço Authentication") do
  RestClient.post(@url, @body, @header) do |response, request, result|
    @response = response
    @body = JSON.parse(@response)
  end
end

Então("no corpo da resposta devo visualizar o token do usuário") do
  puts @body["token"]
end

Então("no corpo da resposta devo ver a mensagem {string}") do |message|
  puts @body["message"]
end

