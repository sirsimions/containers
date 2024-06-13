# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
authors = Author.create([{ name: 'Suhara Logistics', department: 'Suhara Logistics', password: 'technology' }, { name: 'Suhara Uganda', department: 'Suhara Uganda', password: 'technology' }, { name: 'Suhara Kenya', department: 'Suhara Kenya', password: 'technology' }])

def message
    puts 'seeding data ...'
end
message()