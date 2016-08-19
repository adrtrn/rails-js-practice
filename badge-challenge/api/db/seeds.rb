# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times { p employees = Employee.create(name: Faker::Name.name) }
100.times { p badges = Badge.create(content: Faker::Hacker.say_something_smart, votes: rand(10..40),employee_id: rand(1..10)) }
# 200.times { p votes = Vote.create(value: rand(20..50), badge_id: rand(1..40)) }