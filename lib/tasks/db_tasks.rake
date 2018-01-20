ROLE = 'boilerplate_app'.freeze
namespace :db do
  task :create_roles do
    sh "createuser --createdb --login #{ROLE}|| echo role #{ROLE} already exists."
  end
end
