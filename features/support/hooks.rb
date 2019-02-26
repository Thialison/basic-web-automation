Before do |scenario|
    Capybara.reset_sessions!
end

After do |scenario|
    Dir.mkdir('report') unless Dir.exist?('report')

    sufix = ('error' if scenario.failed?) || 'sucess'
    name = scenario.name.tr(' ','_').downcase

    page.save_screenshot("report/#{sufix}-#{name}.png")
    embed("report/#{sufix}-#{name}.png", 'image/png', 'Screenshot')
end 