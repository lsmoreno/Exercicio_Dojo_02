#language: pt
#utf-8
Funcionalidade: Realizar controle de usuarios no site
	Eu como administrador do site
	Quero ter todas as permissões necessárias
	Para realizar inclusão, alteração e exclusão de usuário no sistema


Contexto: Usuário acessa a pagina de controle do site
	Dado que esteja na tela de controle

@wip
Esquema do Cenario: Incluir Usuario	
	Quando adicionar um novo "<Subject>"
	Entao o mesmo deve ser cadastrado no sistema "<Subject>"

	Exemplos: 
	     | Subject | 
	     | Miguelito | 


Esquema do Cenario: Editar Usuario
	Quando editar informações de um "<Subject>"
	Entao o mesmo deve ser atualizado no sistema "<Subject>"

	Exemplos: 
	     | Subject | 
	     | Manu    |

Cenario: Excluir Usuario
	Quando excluir um usuario 
	Entao o mesmo deve ser excluido do sistema





