# frozen_string_literal: true

Before do |_scenario|
  Capybara.use_default_driver
  Capybara.reset_sessions!
end

After do |scenario|
  Dir.mkdir('report') unless Dir.exist?('report')

  sufix = ('error' if scenario.failed?) || 'sucess'
  name = scenario.name.tr(' ', '_').downcase

  page.save_screenshot("report/#{sufix}-#{name}.png")
  attach("report/#{sufix}-#{name}.png", 'image/png')
  Capybara.reset_sessions!
end
