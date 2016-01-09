def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    return true if reply == 'yes'
    return false if reply == 'no'

    puts 'Please answer with "yes" or "no".'
  end
end

wets_bed = ask 'Do you wet the bed?'
puts wets_bed
