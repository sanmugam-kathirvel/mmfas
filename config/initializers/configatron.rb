configatron.configure_from_yaml("config/config.yml", :hash => Rails.env)
APP_CONFIG = YAML.load_file("#{RAILS_ROOT}/config/config.yml")[RAILS_ENV]