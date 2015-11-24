require "bundler/capistrano"
require "rvm/capistrano"
set :stages, %w(production staging)
# set :default_stage, "staging"
require 'capistrano/ext/multistage'

set :repository,  "git@github.com:ucsd-ra/reumanager.git"
#set :domain, "192.168.10.103"
set :domain, "indra"
#set :deploy_to, "/var/www/#{application}" # I like this location
set :scm, :git
set :branch, :mstp_surf

default_run_options[:pty] = true

role :app, domain
role :web, domain
role :db,  domain, :primary => true

## modified for passenger standalone
set :thin_cmd,  "bundle exec thin"
set :whenever_command, "bundle exec whenever"

namespace :deploy do

  desc "chown & chmod to www-data"
  task :chown do
    sudo "chown -R #{user}:www-data #{deploy_to}"
    sudo "chmod -R 770 #{deploy_to}"
  end

  task :start, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path} && #{thin_cmd} start -e #{rails_env} -p #{thin_port} -d"
  end

  task :stop, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_path} && #{thin_cmd} stop -p #{thin_port}"
  end

  task :restart, :roles => :app, :except => { :no_release => true } do
    chown
    stop
    start
  end
end
