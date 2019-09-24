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
