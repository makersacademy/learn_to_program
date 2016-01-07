#While Spike is higher up the alphabet than Angel, set the variable 'input' to get a user input, then repeat it.
while 'Spike' > 'Angel'
  input = gets.chomp
  puts input
  #IF the users input equals 'bye', then break/end the loop and output 'Please come again!'.
  if input == 'bye'
    break
  end
end

puts 'Please come again!'

#Note: This will always test the condition at the top of the loop (Spike > Angel), and will always return true until it's broken.
