# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ticket.delete_all

50.times do |n|
  Ticket.create!( subject: FFaker::Lorem::phrase,
                  from: FFaker::Internet::free_email,
                  content: FFaker::Lorem::phrases)
end