Given("Eu abro a pagina de criar um novo artigo") do
  visit 'articles/new'
  expect(page).to have_current_path('/articles/new')
end

When("Eu crio o artigo com titulo {string} e texto {string}") do |titulo, corpo|
  fill_in 'article[title]', :with =>titulo
  fill_in 'article[text]', :with =>corpo
  click_button 'submit'
end

Then("Eu vejo que o artigo de titulo {string} foi salvo") do |titulo|
  expect(page).to have_content(titulo)
end

When("Eu preencho o artigo com titulo {string} e texto {string}") do |titulo, corpo|
  fill_in 'article[title]', :with =>titulo
  fill_in 'article[text]', :with =>corpo
end

When("Eu clico em salvar artigo") do
  click_button 'submit'
end

Then("Eu vejo uma mensagem de artigo invalido") do
  assert_selector('div#error_explanation', text: '')
end

Given("O artigo com com titulo {string} e texto {string} existe") do |title, body|
  visit 'articles/new'
  expect(page).to have_current_path('/articles/new')
  fill_in 'article[title]', :with => title
  fill_in 'article[text]', :with => body
  click_button 'submit'
  expect(page).to have_content(title)
end

Given("Eu estou na pagina de artigos") do
  visit '/articles'
  expect(page).to have_current_path('/articles')
end

When("Eu clico em editar artigo com titulo {string}") do |title|
  click_link "e-#{title}"
end

When("Eu mudo o titulo do artigo para {string}") do |title|
  fill_in 'article[title]', :with => title
end

