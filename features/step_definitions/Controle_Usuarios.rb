################################## CADASTRAR USUÁRIO ########################################################
Dado(/^que esteja na tela de controle$/) do
	@carregar_pagina_login = LoginSite.new
  	@carregar_pagina_login.load
  	@carregar_pagina_login.login_usuario 'will', 'will'
 end

Quando(/^adicionar um novo "([^"]*)"$/) do |arg1|
	@carregar_pagina_home = Home.new
	@carregar_pagina_home.cadastrar_usuario arg1  
end

Entao(/^o mesmo deve ser cadastrado no sistema "([^"]*)"$/) do |arg1|
	assert_text arg1
	@carregar_pagina_home.sair_logout
end

############################### EDITAR USUÁRIO ########################################################
Quando(/^editar informações de um "([^"]*)"$/) do |arg1|
	@carregar_pagina_home = Home.new
	@carregar_pagina_home.editar_usuario arg1
end

Entao(/^o mesmo deve ser atualizado no sistema "([^"]*)"$/) do |arg1|
	assert_text arg1
	@carregar_pagina_home.sair_logout
end


############################### EXCLUIR USUÁRIO ########################################################
Quando(/^excluir um usuario$/) do
	@carregar_pagina_home = Home.new
	@carregar_pagina_home.excluir_usuario 
end

Entao(/^o mesmo deve ser excluido do sistema$/) do 
	assert_no_text('No results found for "Manu"')
	@carregar_pagina_home.sair_logout
end