# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do
  Company.create({
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    phone1: Faker::PhoneNumber.cell_phone,
    phone2: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.safe_email,
    site: Faker::Internet.url,
    cnpj: "45535206000154",
    about: Faker::Lorem.paragraph(2)
  })
end
