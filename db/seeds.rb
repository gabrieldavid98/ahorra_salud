# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

IdentificationType.insert_all([
  {id: 1, short_name: "CC", long_name: "Cédula de Ciudadanía"},
  {id: 2, short_name: "TI", long_name: "Tarjeta de Identidad"}
])
