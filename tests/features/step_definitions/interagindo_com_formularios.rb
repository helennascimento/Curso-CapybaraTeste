Quando('eu faço cadastro') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'helen')
    find('#user_lastname').set('sales')
    find('#user_email').send_keys('helinhaartesanato@gmail.com')
    fill_in(id: 'user_address', with: 'rua 12')
    find('#user_university').set('anhanguera')
    find('#user_profile').send_keys('qa')
    fill_in(id: 'user_gender', with: 'Feminina')
    find('#user_age').set('34')
    find('input[value="Criar"]').click
end
  
Entao('verifico se fui cadastrado') do
    texto = find ('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
end