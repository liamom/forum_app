# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "hi"
u = User.create(:username => "Liam", :email => "liam@test.com", :password => "12345")
uf = User.find_by "username" , "Liam"
u.discussions.new({:title => "title", :user_id => u.id})

u.save
#u.posts.build({:text => "Hi", :user_id => u.id, :discussion_id => d.id})