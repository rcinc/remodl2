# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(id: 1, email: 'ravi.bakhai@gmail.com', password: 'wyncode1')
Project.create(user_id: 1, title: 'bathroom', description: 'remodel bathroom')
Bid.create(user_id: 1, project_id: 1, bid: '100')
