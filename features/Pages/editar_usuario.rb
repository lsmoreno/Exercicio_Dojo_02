
class Editar < SitePrism::Page

	element :drpcreate, "#quickcreatetop"
	element :drpcreatetask, " .last"
	element :btnViewTask, :xpath, '//*[@id="actionMenuSidebar"]/ul/li[2]/a/div[2]'
	element :btnFiltro, :xpath, '//*[@id="MassUpdate"]/div[3]/div/ul[1]/li/a'
	elements :btnFiltros, :xpath, '//*[@id="pagination"]/td/table/tbody/tr/td[1]/ul[3]/li/a'
	element :txtNameBasic, "#name_basic"
	element :btnSearch,"#search_form_submit"
	element :registroLista, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[4]/b/a'
	element :btnActions, :xpath, '//*[@id="tab-actions"]/a'	
	element :btnEdit, "#edit_button"
	element :txtSubject, "#name"
	element :drpStatus, "#status"
	element :txtStartDate, "#date_start_date"
	element :drpHora, "#date_start_hours"
	element :drpMinutos, "#date_start_minutes"
	element :drpRelated, "#parent_type"
	element :txtDueDate, "#date_due_date"	
	element :drpDueHoras, "#date_due_hours"	
	element :drpDueMinutos, "#date_due_minutes"
	element :drpPriority, "#priority"
	elements :btnSave, "#SAVE"	


#MÉTODO EDITAR USUÁRIO
	def editar_usuario(nome_usuario)
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
		txtSubject.set(nome_usuario)
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
end