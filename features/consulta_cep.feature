#language: pt
#encode: UTF-8

Funcionalidade: Consultar CEP

  Cenario:  Posso consultar o CEP
    Dado que estou na tela inicial
   	Quando digitar um CEP
   	E Clicar no botao consultar
   	Entao devo ver o nome da rua na tela