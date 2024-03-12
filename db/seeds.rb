# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

[['Big Mac', 5.99], ['Quarter Pounder', 6.99], ['McChicken', 4.99], ['Filet-O-Fish', 5.99],
 ['McNuggets', 4.99]].each do |name, price|
  MenuItem.find_or_create_by!(name: name, price: price)
end
