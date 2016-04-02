=begin
OK, now that we can write our own methods, let’s try that psychology exper- iment program again. This time we’ll write a method to ask the questions for us. It will need to take the question as a parameter and return true if the person answers yes and false if they answer no. (Even though most of the time we just ignore the answer, it’s still a good idea for our method to return the answer. This way we can use it for the bed-wetting question, too.) I’m also going to shorten the greeting and the debriefing, just so this is easier to read:
=end

#how I would do it
=begin
def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    return true if reply == 'yes'
    return false if reply == 'no'

    puts 'Please answer "yes" or "no".'
  end
  answer # This is what we return (true or false).
end

# puts(ask('Do you like eating tacos?'))
=end

#How Chris Pine would do it
def ask(question)
while true
  puts question
  reply = gets.chomp.downcase

  if reply == 'yes'
    return true
  elsif reply == 'no'
    return false
  else
    puts 'Please answer "yes" or "no".'
  end

end
return                                    #changed for answer
end

#puts(ask('Do you like eating tacos?'))