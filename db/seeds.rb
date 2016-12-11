# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

College.create(name: "Boston College", location: "New England", sat: 2045, gpa: 3.72, social: 8, athletics: 7, size: 10000)
College.create(name: "University of Alabama", location: "South East", sat: 1652, gpa: 3.66, social: 10, athletics: 10, size: 30000)
College.create(name: "Boston University", location: "New England", sat: 1946, gpa: 3.66, social: 6, athletics: 6, size: 6000)
