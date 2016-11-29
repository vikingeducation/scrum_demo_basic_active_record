# config/initializers/jazz_fingers.rb

if defined?(JazzFingers)
  JazzFingers.configure do |config|
    config.colored_prompt = true
    config.awesome_print = true
    config.coolline = false
    config.application_name = ScrumDemoBasicActiveRecord
  end

  require 'jazz_fingers/setup'
end



