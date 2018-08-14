require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani",        hourly_rate: 60)
@store2.employees.create(first_name: "Don",     last_name: "Burkes",        hourly_rate: 60)
@store1.employees.create(first_name: "Emma",    last_name: "McPhailson",    hourly_rate: 45)
@store2.employees.create(first_name: "Joel",    last_name: "Shinness",      hourly_rate: 50)
@store1.employees.create(first_name: "Davey",   last_name: "Feimer",        hourly_rate: 55)
@store2.employees.create(first_name: "Karl",    last_name: "Jensen",        hourly_rate: 50)
puts Employee.new()

Employee.all.each {|employee| puts employee.first_name }