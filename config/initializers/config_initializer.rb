require 'app_config'

config_file = File.join(Rails.root, 'config', 'application.yml')

if File.exists?(config_file)
  AppConfig.merge! YAML.load_file(config_file)
else
  # no configuration to load.. leaving blank
end
