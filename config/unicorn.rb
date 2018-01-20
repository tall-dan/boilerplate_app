DEPLOY_PATH = '/export/web/boilerplate_app'.freeze
pid_path = 'tmp/pids/unicorn.pid'
socket_file = "#{DEPLOY_PATH}/shared/.dashboard_unicorn.sock"
worker_processes 8
timeout 30
preload_app true
pid pid_path
listen socket_file, backlog: 1024
listen 8080, tcp_nopush: true
stderr_path 'log/unicorn-err.log'
stdout_path 'log/unicorn-out.log'

before_fork do |server, _worker|
  ActiveRecord::Base.connection.disconnect!
  old_pid_path = "#{pid_path}.oldbin"
  if File.exist?(old_pid_path) && server.pid != old_pid_path
    begin
      Process.kill('QUIT', File.read(old_pid_path).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |_server, _worker|
  ActiveRecord::Base.establish_connection
  rails_env = ENV['RAILS_ENV'] || 'production'
end
