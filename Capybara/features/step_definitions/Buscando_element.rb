Quando("acesso a url dos botões") do
  #visitando o site 
  visit '/buscaelementos/botoes'
end

Entao("verifico se encontrei os elementos") do
  #all busca todos os elementos que contem o all
  page.all(:css, '.btn') 
  #busca pelo Id
  find('#teste')
  find_by_id('teste')
  #busca pelo botão
  find_button(class: 'btn waves-light')
  #buscando o primeiro elemento que contenha o elemento mapeado
  first('.btn')
  #busca por algum link
  find_link(href:'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end