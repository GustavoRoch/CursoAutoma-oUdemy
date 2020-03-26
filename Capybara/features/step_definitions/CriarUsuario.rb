Quando("eu faço cadastro") do
  visit '/users/new'
  fill_in(id: 'user_name', with: 'Gustavo')
  find('#user_lastname').set('Rocha')
  find('#user_email').send_keys('teste@inmetricsgmail.com')
  fill_in(id: 'user_address', with: 'rua 12')
  find('#user_university').set('Unip')
  find('#user_profile').send_keys('qa')
  fill_in(id: 'user_gender',with: 'masculino')
  find('#user_age').set('28')
  find('input[value="Criar"]').click
  sleep(5)
end

Entao("verifico se fui cadastrado") do
  texto.find('#notice')
  expect(texto.text).to eql 'Usario criado com Sucesso'
end