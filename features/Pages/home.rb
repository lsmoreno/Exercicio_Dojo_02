class Home < SitePrism::Page
	
	element :btnLogOut, "#usermenucollapsed" 
	element :btnLogOutLink, "#logout_link" 

#MÉTODO PARA SAIR DO SISTEMA
	def sair_logout
		btnLogOut.click
		btnLogOutLink.click
	end
end