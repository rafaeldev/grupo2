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
    about: Faker::Lorem.paragraph(sentence_count: 2)
  })
end

Skill.create([
  { name: "Lógica de programação", kind: :generic },
  { name: "HTML + CSS", kind: :frontend },
  { name: "Javascript", kind: :frontend },
  { name: "ReactJS", kind: :frontend },
  { name: "Ruby", kind: :backend },
  { name: "Java", kind: :backend },
  { name: "Python", kind: :backend },
  { name: "C#", kind: :backend }
])

company1 = Company.first

Job.create([
  {
    title: "Assistente de Backend",
    company: company1,
    skills: Skill.where(kind: :backend),
    description: Faker::Lorem.paragraph(sentence_count: 2)
  }
])

Student.create({
  name: Faker::Name.name,
  address: Faker::Address.full_address,
  phone1: Faker::PhoneNumber.cell_phone,
  phone2: Faker::PhoneNumber.phone_number,
  birthday: Faker::Date.birthday(min_age: 18, max_age: 65),
  biograph: Faker::Lorem.paragraph(sentence_count: 8),
  skills: [Skill.find(1), Skill.find(2), Skill.find(5)],
})

Student.create({
  name: Faker::Name.name,
  address: Faker::Address.full_address,
  phone1: Faker::PhoneNumber.cell_phone,
  phone2: Faker::PhoneNumber.phone_number,
  birthday: Faker::Date.birthday(min_age: 18, max_age: 65),
  biograph: Faker::Lorem.paragraph(sentence_count: 8),
  skills: [Skill.find(7)],
})
