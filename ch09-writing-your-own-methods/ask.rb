def ask question
  puts question
  answer = gets.chomp
  if answer == "yes" || answer == "no"
    if answer == "yes"
      true
    else
      false
    end
  else
    puts "Please answer 'yes' or 'no'!"
  end
end