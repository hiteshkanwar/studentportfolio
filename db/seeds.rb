# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    
  user=User.new
  user.email="admin@gmail.com"
  user.password="12345678"
  user.roles.new(:name=>"admin")
  user.user_roles.new()
  user.save

