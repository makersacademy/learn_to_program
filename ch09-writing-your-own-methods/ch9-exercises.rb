def say_moo
  puts 'moooooo...'
end

say_moo
say_moo
puts 'coin-coin'
say_moo
say_moo

puts

# To add an argument to a method you can write it after the method name

def say_moo2 number_of_moos
  puts 'moooooo...'*number_of_moos
end

say_moo2 3
puts 'oink-oink'

# Last line below should throw an error
# As parameter is missing...
# say_moo2

# This method has two local variables, num and num_times_2,
# which can only be called inside the method
def double_this num
  num_times_2 = num*2
  puts num.to_s+ ' doubled is '+num_times_2.to_s
end

double_this 24

puts

# Example of local variables not available outside of method
tough_var = 'You can\'t even touch my variable'

def little_pest tough_var
  tough_var = nil
  puts 'HAHA! I ruined your varialbe!!'
end

little_pest tough_var
puts tough_var

puts

#Example showing what puts returns (e.g. nil)
return_val = puts 'This puts returned: '
puts return_val

return_moo = say_moo
puts return_moo

# Example showing values returns from methods is last expression
# evaluated (this is usually the last line of the code)

def say_baa number_of_baas
  puts 'baaaaaaa...'*number_of_baas
  'yellow submarine'
end

x = say_baa 3
puts x.capitalize + ', dude...'
puts x            + '.'

puts
def favorite_food name
  if name == 'Lister'
    return 'vindaloo'
  end

  if name == 'Rimmer'
    return 'mashed potatoes'
  end

  'hard to say...maybe fried plantain?'
end

def favorite_drink name
  if name == 'Jean-Luc'
    'tea, Earl Grey, hot'
  elsif name == 'Kathryn'
    'coffee, black'
  else
    'perhaps...horchata?'
  end
end

puts favorite_food('Rimmer')
puts favorite_food('Lister')
puts favorite_food('Cher')
puts favorite_drink('Kathryn')
puts favorite_drink('Oprah')
puts favorite_drink('Jean-Luc')

puts

def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
  answer # This is what we return (true of false)
end

puts 'Hello and thank you for...'
puts

ask 'Do you like eating tacos?'         # Ignore this return value
ask 'Do you like eating burritos?'      # And this one
wets_bed = ask 'Do you wet the bed?'    # Save this return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like eating horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING'
puts 'Thank you for...'
puts
puts wets_bed
