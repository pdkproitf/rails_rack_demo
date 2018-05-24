require_relative 'users_application'
require_relative 'rises_application'
require_relative 'database'

# run application
map('/users') do
  run UsersApplication.new
end

map('/rises') do
  run RisesApplication.new
end
