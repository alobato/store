require "bundler/capistrano"
set :application, "store"
set :repository,  "git@github.com:alobato/store.git"
set :user, "deployer"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :use_sudo, false
default_environment["PATH"] = "/home/#{user}/.ruby/2.0.0-p0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
server "198.211.107.94", :web, :app, :db, primary: true
