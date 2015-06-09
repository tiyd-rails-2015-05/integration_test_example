# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do |counter|
  teacher = Teacher.create!(name: Faker::Name.name, email: "#{counter+1}@#{counter+1}.com",
      password: "password")
  Parent.create!(name: Faker::Name.name, email: "#{counter+1}@#{counter+1}.com",
      child_name: Faker::Name.name, teacher_id: teacher.id)
end
