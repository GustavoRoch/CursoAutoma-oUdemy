Quando("acessar a url") do
  #visitando site 
  visit '/treinamento/home'
end

Entao("eu verifico se estou na pagina") do 
  #Verificando a URL
  expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end 