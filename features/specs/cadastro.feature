#language: pt

Funcionalidade: Cadastro

    Como gestor da plataforma desejo cadastrar novos entregadores


Cenario: Cadastro com sucesso
Dado que estou na página de cadastro
Quando preencho os campos de dados com os seguintes valores:
  | nome   | cpf          | email              | whatsapp      |
  | João   | 12345678901 | joao@example.com    | 1234567890    |
E preencho os dados de endereço com os seguintes valores:
    | cep           | numero   | complemento   |
    | 40170-110     | 12       | Apto 456      |
E seleciono o método de entrega como Moto
E faço o upload da foto da CNH
E clico no botão Cadastre-se para fazer entregas
Então vejo o banner com "Aí Sim..." confirmando o sucesso do cadastro

Cenario: Cadastro sem sucesso
Dado que estou na página de cadastro
Quando preencho os campos de dados com os seguintes valores:
  | nome   | cpf          | email              | whatsapp      |
  | João   | 12345678901 | joao@example.com    | 1234567890    |
E preencho os dados de endereço com os seguintes valores:
    | cep           | numero   | complemento   |
    | 40170-110     | 12       | Apto 456      |
E seleciono o método de entrega como Moto
E clico no botão Cadastre-se para fazer entregas
Então devo ver a mensagem "Adicione uma foto da sua CNH"
