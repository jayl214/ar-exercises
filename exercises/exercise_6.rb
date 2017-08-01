require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"




@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 200)
@store1.employees.create(first_name: "Benicio", last_name: "Del Torro", hourly_rate: 40)
@store1.employees.create(first_name: "Emily", last_name: "Blunt", hourly_rate: 40)

@store2.employees.create(first_name: "Aegon", last_name: "Targaryen", hourly_rate: 200)
@store2.employees.create(first_name: "Visenya", last_name: "Targaryen", hourly_rate: 40)
@store2.employees.create(first_name: "Rhaenys", last_name: "Targaryen", hourly_rate: 40)
