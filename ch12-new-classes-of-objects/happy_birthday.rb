
puts "what year where you born in?"
user_input = gets.chomp.to_i

if user_input.is_a? Integer # its a string as IO puts in strings
a = Time.local(2016)
b = Time.local(user_input)
c = ((a - b)/60/60/24/365).to_i


  puts "SPANK!" * c
    else
  "not an integer"
  end


