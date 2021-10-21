Quando('eu cadastro o usuario') do
    visit '/users/new'
    fill_in(id: 'user_name', with: 'Helen')
    find('#user_lastname').set('Sales')
    fill_in(id: 'user_email', with: 'helensales@gmail.com')
    find('input[value="Criar"]').click
end
  
Entao('verifico se o usuario foi Cadastrando') do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'

end
  
Quando('edito um usuario') do
    sleep(5)
    find('.btn.waves-light.blue').click

end

Entao('verifico se o usuario foi editado.') do

end