# Before do 

# end

# After do |scenario|

# 	time=Time.now.strftime
# 	#page.save_screenshot(scenario.name.gsub)

# end


After do |scenario|
	Dir.mkdir('reports') unless Dir.exist?('reports')
	sufix = ('error' if scenario.failed?) || 'sucess'
	name = scenario.name.tr(' ','_').downcase

	page.save_screenshot("reports/#{sufix}-#{name}.png")
	embed("reports/#{sufix}-#{name}.png", 'image/png', 'SCREENSHOT') 
end 


# Around do |scenario, block|

# 	block.call
# 	sleep 5
# 	puts("funcionou corretamente")

# end
