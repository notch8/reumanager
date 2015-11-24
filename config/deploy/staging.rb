set :application, "mstp_surf_demo" #matches names used in smf_template.erb
set :deploy_to, "/var/www/#{application}" # I like this location
set :user, "ubuntu"
set :keep_releases, 3
set :rvm_ruby_string, "ree@#{application}"
set :rvm_type, :system
set :rails_env,      "staging"
set :thin_port, 4099
