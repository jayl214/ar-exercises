require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

newStoreName = gets.chomp

@newStore = Store.create(name: newStoreName, mens_apparel: 0, womens_apparel: 0)
@newStore.errors.messages.each do |message|
  puts message
end

