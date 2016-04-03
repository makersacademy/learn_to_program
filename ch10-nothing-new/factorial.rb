def factorial(num) 
  if num < 0 
    return 'You can\'t take the factorial of a negative number.'
  elsif num <= 1
    1
  else
    num * factorial(num-1)
  end
end

puts factorial(2)
puts factorial(3)
puts factorial(4)
puts factorial(5)
puts factorial(6)
puts factorial(7)
puts factorial(8)
puts factorial(9)
puts factorial(10)