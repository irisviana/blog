Feature: Artigo
  As a usuario do sistema blog
  I want to adicionar, remover, ver e editar um artigo
  so that eu nao ter que fazer isso manualmente

  Scenario: novo artigo valido
    Given Eu abro a pagina de criar um novo artigo
    When Eu crio o artigo com titulo 'novo artigo Ruby' e texto 'Ruby'
    Then Eu vejo que o artigo de titulo 'novo artigo Ruby' foi salvo

  Scenario: novo artigo com titulo vazio
    Given Eu abro a pagina de criar um novo artigo
    When Eu preencho o artigo com titulo '' e texto ''
    And Eu clico em salvar artigo
    Then Eu vejo uma mensagem de artigo invalido