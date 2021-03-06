namespace :env do
  task :production => [:environment] do
    set :domain,              '127.0.0.1'
    set :user,                'deployer'
    set :deploy_to,           "/home/#{user}/apps/#{app}"
    set :repository,          "/home/#{user}/git/#{app}"
    set :nginx_path,          '/etc/nginx'
    set :deploy_server,       'production'                   # just a handy name of the server
    set :rails_env,           'production'
    set :branch,              'master'
    invoke :defaults                                         # load rest of the config
  end
end