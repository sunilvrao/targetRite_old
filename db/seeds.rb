# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  r = Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  if role == "owner"
  	puts 'role: is indeed owner '
    r.tasks.create! name: "Update Profile", role_id: r.id
    r.tasks.create! name: "Add/Update your store information", role_id: r.id
    r.tasks.create! name: "Create a Campaign", role_id: r.id
    r.tasks.create! name: "Sign up an Employee", role_id: r.id
  end
  if role == "employee"
  	r.tasks.create! name: "Update Profile", role_id: r.id
  end

  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.confirm!
user.add_role :admin