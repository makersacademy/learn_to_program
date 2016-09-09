def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == "yes"
      return true
    elsif reply == "no"
      return false
    end
    puts "Please answer 'yes' or 'no'"
  end
end

ask "Do you like eating tacos?"
=begin
ask "Do you like eating burritos?"
wets_bed = ask "Do you wet the bed?"
ask "Do you like eating chimichangas?"
ask "Do you like eating sopapillas?"
puts "Just a few more questions..."
ask "Do you like eating drinking horchata?"
ask "Do you like eating flautas?"
puts
puts "DEBRIEFING:"
puts "Thank you for"
puts
puts wets_bed
=end
