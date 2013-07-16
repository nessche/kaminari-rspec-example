# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

things = Thing.create([{name: 'pen', value: 10, owner: 'Charlie'},{name: 'book', value: 20, owner: 'Bob'}, {name: 'eraser', value: '5', owner: 'Alice'},
                      {name: 'chalk', value: 1, owner: 'Daniel'}, {name: 'ruler', value: '7', owner: 'Elisa'}])
