class Metodos
    include RSpec::Matchers

def header_acessar_conta
    {
        "Authorization:": "ytNUA646PoaO9XwEpTm6Th",
        "Content-Type": "application/json"
    }
end

def header_autenticar
    {
        "Content-Type": "application/json"
    }
end


def valida_response_get(body)
    expect((body["user_id"]).to_s).to eq ("11oaO9XwEpTm6")
    expect((body["name"]).to_s).to eq("QA User")
    expect((body["email"]).to_s).to eq("qa@veek.com.br")
    expect((body["userState"]).to_s).to eq("Active")
    expect((body["userPlan"]).to_s).to eq("Amazing Phone Plan")
    expect((body["phone"]).to_s).to eq("5511989898787")
end


def escolhe_payload(email, password)

    if email == DATA["email_invalido"] && password == DATA["password_correto"]
        @body = File.read(DATA['body']['email_invalido']).chomp
        elsif !email && password == DATA["password_correto"]
            @body = File.read(DATA['body']['email_required']).chomp
            elsif email == DATA["email_correto"] && password == DATA["password_invalido"]
                @body = File.read(DATA['body']['password_invalido']).chomp 
            else
                @body = File.read(DATA['body']['password_required']).chomp 
    end
    return @body
end

#
end