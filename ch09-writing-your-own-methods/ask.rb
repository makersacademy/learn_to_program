def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if reply == "yes" || reply == "no"
      if reply == "yes"
        return true
      elsif reply == "no"
        return false
      end
        break
      else
        puts "Please, answer with a 'yes' or a 'no'! "
    end
  end

end

ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
wets_bed = ask "Do you wet the bed?"
ask 'Do you like eating burritos?'
ask 'Do you like eating tacos?'

puts wets_bed
