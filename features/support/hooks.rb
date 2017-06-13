
After do |scenario|
  Dir.mkdir('reports') unless Dir.exists?('reports')
  sufix =  ('error' if scenario.failed?) || 'sucess'
  name = scenario.name.tr(' ', '_').downcase

  page.save_screenshot("reports/#{sufix}-#{name}.png")
  embed("reports/#{sufix}-#{name}.png", 'image/png', 'SCREENSHOT')
end