# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


NUM_STUDENTS = 100
NAMES = [
  'Luke',
  'R2D2',
  'C3P0',
  'Darth',
  'Vader',
  'Skywalker',
  'Princess',
  'Leia'
]



puts 'Cleaning Database'
if Rails.env == 'development'
  Rake::Task['db:migrate:reset'].invoke
end


puts 'Creating Students'
students = []
NUM_STUDENTS.times do |i|
  students << {
    first_name: NAMES.sample,
    last_name: NAMES.sample,
    grade: (1..12).to_a.sample,
    age: (8..50).to_a.sample
  }
end
Student.create(students)
students = Student.all


puts 'Done'





