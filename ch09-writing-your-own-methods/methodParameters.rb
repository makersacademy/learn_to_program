#to define a new method:
def say_moo
  puts 'mooooo.....'
end

#to call that method:
say_moo
say_moo
puts 'something else'
say_moo
say_moo

#this will not work however:
# say_moo * 3 => in the hope of getting mooooo..... mooooo..... mooooo.....

#to get say_moo to repeat itself, we can add a parameter to the method:
def say_moo number_of_moos
  puts 'mooooo..... ' * number_of_moos
  'yellow submarine'
end

#now we can...
say_moo 3

#but if we forget the parameter... it will throw up an error:
# say_moo => methodParameters.rb:17:in `say_moo': wrong number of arguments (0 for 1) (ArgumentError)

return_val = say_moo 2
puts return_val
