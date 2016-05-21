# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Example.delete_all

Example.create name: 'example1', design: 'simple', album: 'standard', pageview: 1000, like:200, new:1
Example.create name: 'example2', design: 'simple', album: 'standard', pageview: 2000, like:250, new:0
Example.create name: 'example3', design: 'pop', album: 'basic', pageview: 100, like:20, new:0
Example.create name: 'example4', design: 'pop', album: 'premium', pageview: 15, like:2, new:1

print "There are now #{Example.count} examples in the database.\n"