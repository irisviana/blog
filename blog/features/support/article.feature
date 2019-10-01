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

  Scenario: editar artigo com titulo com caracteres insuficiente
    Given O artigo com com titulo 'novo artigo Ruby' e texto 'Ruby' existe
    And Eu estou na pagina de artigos
    When Eu clico em editar artigo com titulo 'novo artigo Ruby'
    And Eu mudo o titulo do artigo para 'Ruby'
    And Eu clico em salvar artigo
    Then Eu vejo uma mensagem de artigo invalido

  Scenario: editar artigo valido
    Given O artigo com com titulo 'novo artigo Ruby' e texto 'Ruby' existe
    And Eu estou na pagina de artigos
    When Eu clico em editar artigo com titulo 'novo artigo Ruby'
    Then Eu vejo que o artigo de titulo 'novo artigo Ruby' foi editado com sucesso

