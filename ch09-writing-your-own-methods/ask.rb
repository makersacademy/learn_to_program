def ask question
  # 
    while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no') 
      if reply == 'yes'
        return true
      else
        return false
     end
     break
  else
    puts 'Please answer yes or no '
    end
  end
end
ask 'Do you like tacos?'
ask 'Do you like eating buritos?'
wets_bed = ask ('Do you wet the bed?')
ask 'Do you like Christmas '
puts 
puts 'DEBRIEFING: '
puts 'Thank for...'
puts
puts wets_bed