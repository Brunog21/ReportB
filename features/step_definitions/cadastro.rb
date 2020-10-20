Dado('que esteja no formulario de cadastro') do
  visit '/register'
  sleep 5
  @cadastro = Cadastro.new
end

Quando('faço cadastro com {string}, {string} e {string}') do |nome, email, senha|
  @cadastro.name.set nome
  @cadastro.email.set email
  @cadastro.password.set senha
  @cadastro.cadastrar.click
end

Então('vejo a mensagem {string}') do |mensagem|
  expect(page).to have_content mensagem
end



