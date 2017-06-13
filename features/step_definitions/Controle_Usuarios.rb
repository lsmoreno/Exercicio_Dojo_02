################################## CADASTRAR USUÁRIO ########################################################
Dado(/^que esteja na tela de controle$/) do
	@carregar_pagina_login = LoginSite.new
  	@carregar_pagina_login.load
  	@carregar_pagina_login.login_usuario 'will', 'will'
 end

Quando(/^adicionar um novo "([^"]*)"$/) do |nome_usuario|
	@carregar_pagina_cadastrar = Cadastrar.new
	@carregar_pagina_home = Home.new
	@carregar_pagina_cadastrar.cadastrar_usuario nome_usuario  
	
end

Entao(/^o mesmo deve ser cadastrado no sistema "([^"]*)"$/) do |nome_usuario|
	assert_text nome_usuario
	@carregar_pagina_home.sair_logout
end

############################### EDITAR USUÁRIO ########################################################
Quando(/^editar informações de um "([^"]*)"$/) do |nome_usuario|
	@carregar_pagina_editar = Editar.new
	@carregar_pagina_home = Home.new
	@carregar_pagina_editar.editar_usuario nome_usuario

end

Entao(/^o mesmo deve ser atualizado no sistema "([^"]*)"$/) do |nome_usuario|
	assert_text nome_usuario
	@carregar_pagina_home.sair_logout
end


############################### EXCLUIR USUÁRIO ########################################################
Quando(/^excluir um usuario$/) do
	@carregar_pagina_excluir = Excluir.new
	@carregar_pagina_home = Home.new
	@carregar_pagina_excluir.excluir_usuario 
end

Entao(/^o mesmo deve ser excluido do sistema$/) do 
	sleep 5
	assert_text('Create')
	sleep 5
	@carregar_pagina_home.sair_logout
end