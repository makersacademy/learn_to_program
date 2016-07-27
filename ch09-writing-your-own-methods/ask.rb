def ask question
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
end
puts 'Hello, and thank you for participating'
ask 'Do you like eating tacos?'
wets_bed = ask 'Do you wet the bed?'
puts "Thanks for your time. Your answer to wetting the bed:"
puts wets_bed
