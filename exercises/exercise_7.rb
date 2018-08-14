require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Invalid entries
puts "Input a store name less than 3 characters long to cause all error messages:"
print "> "
store_name = $stdin.gets.chomp
@user_store = Store.new()
@user_store.name = store_name

@user_store.save

if @user_store.errors.any?
    @user_store.errors.full_messages.each do |message|
        puts message
    end
end