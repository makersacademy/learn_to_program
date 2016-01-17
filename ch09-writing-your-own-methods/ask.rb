def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      return true if reply == 'yes'
      return false if reply == 'no'
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

ask 'Do you like eating apples?'
ask 'Do you like eating bananas?' # And this one
wets_bed = ask 'Do you wet the bed?' # Save this return value
ask 'Do you like eating pears?'
ask 'Do you like eating cherries?'
puts wets_bed
