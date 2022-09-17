# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
   { name: '中華' },
   { name: 'おつまみ' },
   { name: '和食' },
   { name: '洋食' },
].each do |h|
   Tag.find_or_create_by(name: h[:name])
  end