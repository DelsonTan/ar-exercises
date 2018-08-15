require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

def putErrors(ar_operation)
    if ar_operation.errors.any?
        ar_operation.errors.full_messages.each do |message|
            puts message
        end
    end
end

# Invalid entries
@no_name = @store1.employees.create(hourly_rate: 60)
putErrors @no_name
puts @no_name

@no_store = Employee.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
putErrors @no_store

@name_error = Store.create name: "Su", annual_revenue: 224000, mens_apparel: true, womens_apparel: false
putErrors @name_error

@annual_revenue_error = Store.create name: "Surrey", annual_revenue: -1, mens_apparel: true, womens_apparel: false
putErrors @annual_revenue_error

@custom_error = Store.create name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: false
putErrors @custom_error

# puts "Input a store name less than 3 characters long to cause all error messages:"
# print "> "
# store_name = $stdin.gets.chomp
# @user_store = Store.new()
# @user_store.name = store_name

# @user_store.save
# putErrors @user_store