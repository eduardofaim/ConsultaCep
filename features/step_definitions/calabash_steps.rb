require 'calabash-android/calabash_steps'
require 'pry'

Dado(/^que estou na tela inicial$/) do
  element_exists "* id:'input_cep'"
end

Quando(/^digitar um CEP$/) do
  query "* id:'input_cep'", { setText: "04565001" }
end

Quando(/^Clicar no botao consultar$/) do
  touch "* id:'botao_consulta'"
end

Entao(/^devo ver o nome da rua na tela$/) do
  wait_for(timeout: 5) { element_exists "* {text CONTAINS 'Rua Flórida'}" } 
end
