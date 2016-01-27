set :application, 'new_demo' #matches names used in smf_template.erb
set :rvm_ruby_string, "2.1.1@#{application}"
set :rvm_type, :system

require "bundler/capistrano"
require "rvm/capistrano"
# require 'capistrano/ext/database'

#set :whenever_command, "bundle exec whenever"
#require "whenever/capistrano"
# set :repository,  'git@github.com:notch8/reumanager.git'
set :repository,  "https://github.com/notch8/reumanager.git"
set :branch, 'new_demo'
set :domain, 'indra'
set :deploy_to, "/var/www/#{application}" # I like this location
set :deploy_via, :remote_cache
set :user, "ubuntu"
set :keep_releases, 6
set :server_name, domain
set :scm, :git
set :default_env, {
  "RAILS_RELATIVE_URL_ROOT" => "/new_demo"
}

set :asset_env, "#{asset_env} RAILS_RELATIVE_URL_ROOT=/new_demo"

default_run_options[:pty] = true

role :app, domain
role :web, domain
role :db,  domain, :primary => true


before 'deploy:assets:precompile', 'deploy:symlink_db'
namespace :deploy do

  task :restart, :roles => :app, :except => { :no_release => true } do
    run "cd #{release_path} && touch tmp/restart.txt"
  end

  desc "Symlinks the database.yml"
  task :symlink_db, :roles => :app do
    run "rm #{release_path}/config/database.yml"
    run "ln -nfs #{deploy_to}/shared/config/*.yml #{release_path}/config/"
  end

end
