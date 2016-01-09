def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      # Return true or false
      if reply == 'yes'
        return true
      else
        return false
      end
      break
    else
      puts 'Please answer with either "yes" or "no".'
    end
  end
end

puts 'Questionaire'
puts
ask 'Question 1'
ask 'Question 2'
wets_bed = ask 'Question 3'
ask 'Question 4'
ask 'Question 5'
puts
puts 'Questionaire end'
puts
puts wets_bed
