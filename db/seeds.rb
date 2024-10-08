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

Specialty.insert_all([
  {id: 1, name: "Medicina General"},
  {id: 2, name: "Cardioangiologia"},
  {id: 3, name: "Cardiologia"},
  {id: 4, name: "Cirugia Cardiovascular"},
  {id: 5, name: "Cirugia General"},
  {id: 6, name: "Ginecologia"},
  {id: 7, name: "Oncologia"},
  {id: 8, name: "Pediatria"},
  {id: 9, name: "Nefrologia"},
  {id: 10, name: "Oftalmologia"},
  {id: 11, name: "Ortopedia"},
])

HealthCenter.insert_all([
  {id: 1, name: "Centro Médico Antiguo Country", address: "Cra. 18  84-10", phone: "Tel: (57) (1) 2360833", email: ""},
  {id: 2, name: "Clínica Alvear", address: "Cl 11 # 93 A-38", phone: "Tel: (57) (1) 6919043 - 6100812", email: ""},
  {id: 3, name: "Clínica Barraquer", address: "Av Calle 100 # 18 A - 51", phone: "Tel: (57) (1) 2187077", email: ""},
  {id: 4, name: "Clínica Bochica", address: "Cl 69 # 14-69", phone: "Tel: (57) (1) 3475007", email: ""},
  {id: 5, name: "Clínica Bogotá S.A.", address: "Cr 17 # 12-65", phone: "Tel: (57) (1) 2823201", email: ""},
  {id: 6, name: "Clínica el Bosque", address: "Cra. 7 b Bis # 134", phone: "Tel: (57) (1) 2745445 – 2740577", email: ""},
  {id: 7, name: "Clínica Cafam", address: "Cl. 51 # 16-34", phone: "Tel: (57) (1) 3077011", email: ""},
  {id: 8, name: "Clínica del Country", address: "Cra 16 # 82-57", phone: "Tel: (57) (1) 5301270", email: ""},
  {id: 9, name: "Clínica de la Mujer", address: "Cr 19 C # 91-17", phone: "Tel: (57) (1) 6161799", email: ""},
  {id: 10, name: "Clínica del Norte", address: "Cra 22 # 139-55", phone: "Tel: (57) (1) 6161627", email: ""},
  {id: 11, name: "Clínica del Occidente", address: "Avenida Americas # 71 C - 29", phone: "Tel: (57) (1) 4254620", email: ""},
])

Doctor.insert_all([
  {id: 1, names: "Carlos", last_names: "García Pérez"},
  {id: 2, names: "María", last_names: "Fernández López"},
  {id: 3, names: "José", last_names: "Martínez González"},
  {id: 4, names: "Ana", last_names: "Rodríguez Sánchez"},
  {id: 5, names: "Luis", last_names: "Hernández Díaz"},
  {id: 6, names: "Elena", last_names: "Ruiz Romero"},
  {id: 7, names: "Miguel", last_names: "Jiménez Torres"},
  {id: 8, names: "Laura", last_names: "Moreno Muñoz"},
  {id: 9, names: "Juan", last_names: "Gómez Navarro"},
  {id: 10, names: "Lucía", last_names: "Vega Márquez"},
])
