class Home < SitePrism::Page
	
	element :drpcreate, "#quickcreatetop"
	element :drpcreatetask, " .last"
	element :txtSubject, "#name"
	element :drpStatus, "#status"
	element :txtStartDate, "#date_start_date"
	element :drpHora, "#date_start_hours"
	element :drpMinutos, "#date_start_minutes"
	element :txtDueDate, "#date_due_date"
	element :drpRelated, "#parent_type"
	element :drpDueHoras, "#date_due_hours"
	element :drpDueMinutos, "#date_due_minutes"
	element :drpPriority, "#priority"
	elements :btnSave, "#SAVE"
	elements :btnSaveEdit, "#SAVE"
	element :btnActions, :xpath, '//*[@id="tab-actions"]/a'	
	element :btnViewTask, :xpath, '//*[@id="actionMenuSidebar"]/ul/li[2]/a/div[2]'


	elements :btnFiltros, :xpath, '//*[@id="pagination"]/td/table/tbody/tr/td[1]/ul[3]/li/a'
	element :btnFiltro, :xpath, '//*[@id="MassUpdate"]/div[3]/div/ul[1]/li/a'

	element :txtNameBasic, "#name_basic"
	element :btnSearch,"#search_form_submit"
	element :ckbSelecionaNome, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr/td[1]/input'
	element :apagaPesquisa, :xpath, '//*[@id="MassUpdate"]/div[3]/div/ul[2]/li[1]/a[1]'
	elements :btnBulkAction, :xpath, '//*[@id="delete_listview_top"]/label[2]'
	#element :btnBulkActionSeleciona, '#delete_listview_top'

	element :btnBulkActionSeleciona, :xpath, '//*[@id="delete_listview_top"]'
	element :btnDeleteList, '#delete_listview_top'
	#element :btnDeleteList,	:xpath, '//*[@id="delete_listview_bottom"]'
	element :registroLista, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[4]/b/a'
	element :btnEdit, "#edit_button"
	element :btnDelete, "#delete_button"	
	element :linhaDeletar, :xpath, '#a2a7bbd8-743f-563b-d196-59394da471ad'								
	element :popOk, :xpath, '//*[@id="closeActivityDialog"]/div[3]/span/button[1]'
	element :btnLogOut, "#usermenucollapsed" 
	element :btnLogOutLink, "#logout_link" 

#MÉTODO PARA SAIR DO SISTEMA
	def sair_logout
		btnLogOut.click
		btnLogOutLink.click
	end
							
#MÉTODO CADASTRAR USUÁRIO
	def cadastrar_usuario(arg1)
		drpcreate.click
		drpcreatetask.click
		txtSubject.set(arg1)
		drpStatus.select('In Progress')
		txtStartDate.set('06/06/2002')	
		drpHora.select('10')
		drpMinutos.select('15')
		drpRelated.select('Opportunity')
		txtDueDate.set('08/06/2002')
		drpDueHoras.select('09')
		drpDueMinutos.select('00')
		drpPriority.select('High')
		btnSave[0].click
	end

#MÉTODO EDITAR USUÁRIO
	def editar_usuario(arg1)
		drpcreate.click
		drpcreatetask.click
		btnViewTask.click
		
		if (defined?(btnFiltro)).nil?
			btnFiltro.click
		else
			btnFiltros[0].click
			
		end
	
		txtNameBasic.set('Miguelito')
		btnSearch.click
		registroLista.click
		btnActions.click
		btnEdit.click
		txtSubject.set(arg1)
		drpStatus.select('Completed')
		txtStartDate.set('07/01/2002')	
		drpHora.select('10')
		drpMinutos.select('15')
		drpRelated.select('Opportunity')
		txtDueDate.set('09/07/2002')
		drpDueHoras.select('09')
		drpDueMinutos.select('00')
		drpPriority.select('Low')
		btnSave[1].click
	end


#MÉTODO EXCLUIR USUÁRIO
	def excluir_usuario
		drpcreate.click
		drpcreatetask.click
		btnViewTask.click

		sleep 10
		btnFiltro.click		
		txtNameBasic.set('Manu')
		btnSearch.click
		#ckbSelecionaNome.click
		#btnBulkAction[1].click
		#btnDeleteList.click
		#btnBulkActionSeleciona.click

		registroLista.click	
		
		btnActions.click
		sleep 5
		btnDelete.click
		sleep 5

		page.driver.browser.switch_to.alert.accept		
	end
end