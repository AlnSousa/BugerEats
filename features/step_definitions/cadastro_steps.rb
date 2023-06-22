Dado('que estou na página de cadastro') do
    @home_page.go
    @home_page.open_form
  end

 Quando('preencho os campos de dados com os seguintes valores:') do |tabela|
    tabela.hashes.each do |dados|
      @form_page.fill_name(dados['nome'])
      @form_page.fill_cpf(dados['cpf'])
      @form_page.fill_email(dados['email'])
      @form_page.fill_whatsapp(dados['whatsapp'])
    end
  end

  Quando('preencho os dados de endereço com os seguintes valores:') do |tabela|
    tabela.hashes.each do |dados|
      @form_page.fill_cep(dados['cep'])
      @form_page.fill_number(dados['numero'])
      @form_page.fill_complement(dados['complemento'])

    end
  end
  
  Quando('seleciono o método de entrega como Moto') do
    @form_page.click_moto
  end
  
  Quando('faço o upload da foto da CNH') do
    @form_page.upload_cnh
  end
  
  Quando('clico no botão Cadastre-se para fazer entregas') do
    @form_page.click_signin
  end
  
  Então('vejo o banner com {string} confirmando o sucesso do cadastro') do |success_message|
    assert_text(success_message)
  end

  Então "devo ver a mensagem {string}" do |error_message|
    assert_text(error_message)
  end