class Excluir< SitePrism::Page
	
	element :drpcreate, "#quickcreatetop"
	element :drpcreatetask, " .last"
	element :btnViewTask, :xpath, '//*[@id="actionMenuSidebar"]/ul/li[2]/a/div[2]'
	element :btnFiltro, :xpath, '//*[@id="MassUpdate"]/div[3]/div/ul[1]/li/a'
	element :txtNameBasic, "#name_basic"	
	element :btnSearch,"#search_form_submit"
	element :registroLista, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[1]/td[4]/b/a'
	element :btnActions, :xpath, '//*[@id="tab-actions"]/a'	
	element :btnDelete, "#delete_button"	

#MÉTODO EXCLUIR USUÁRIO
	def excluir_usuario
		drpcreate.click
		drpcreatetask.click
		btnViewTask.click

		sleep 10
		btnFiltro.click		
		txtNameBasic.set('Manu')
		btnSearch.click
		registroLista.click		
		sleep 5	
		btnActions.click
		sleep 5
		btnDelete.click
		sleep 5
		page.driver.browser.switch_to.alert.accept				

	end
end