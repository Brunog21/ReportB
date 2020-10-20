class Cadastro < SitePrism::Page 
        element :name, '#register_name'
        element :email, '#register_email'
        element :password, '#register_password'
        element :cadastrar, 'button[type=submit]'
end
