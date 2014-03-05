# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new(
  email: 'rock.khuya@gmail.com',
  first_name: 'Luu', 
  last_name: 'Tuan Anh', 
  roles: ['admin'], 
  password: '12345678',
  password_confirmation: '12345678'
)
admin.skip_confirmation!
admin.save!
