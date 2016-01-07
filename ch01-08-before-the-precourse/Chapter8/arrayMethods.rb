meals = ['Breakfast', 'Bunch', 'Lunch', 'Tea', 'Dinner']

puts meals
puts
puts meals.to_s
puts
puts meals.join(', ')
puts
puts meals.join(' and ') + ' in one day will make you a very fat boy!'

5.times do
  puts meals.join(', ')
end
