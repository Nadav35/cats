# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  Cat.destroy_all
  
  Cat.create!(birth_date: '2015/01/20', color: 'black', name: 'Brian', sex: 'M', description: 'A cute, skinny black cat')
  Cat.create!(birth_date: '2012/03/12', color: 'red', name: 'Mandy', sex: 'F', description: 'A feisty cat')
  Cat.create!(birth_date: '2010/11/08', color: 'white', name: 'Ti', sex: 'M', description: 'A very mature, smart cat')
  Cat.create!(birth_date: '1990/09/22', color: 'grey', name: 'Nadav', sex: 'M', description: 'A verrrrry old cat!!!')

  
end
