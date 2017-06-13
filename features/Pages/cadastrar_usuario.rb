class Cadastrar < SitePrism::Page

	element :drpcreate, "#quickcreatetop"
	element :drpcreatetask, " .last"
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

	#MÉTODO CADASTRAR USUÁRIO
	def cadastrar_usuario(nome_usuario)
		drpcreate.click
		drpcreatetask.click
		txtSubject.set(nome_usuario)
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

end