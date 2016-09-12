def ask question
  while true
    puts question
    input = gets.chomp.downcase
    if input == 'yes'
      return true
    elsif input == 'no'
      return false
    else
      puts "please answer yes or no"
    end
  end
end

puts "Hello and thank you for participating"
puts

ask "Do you like tacos?"
ask "Do you like burritos?"
wets_bed = ask "Do you wet the bed"
ask "Do you like chimichangas?"
ask "Do you like sopapillas?"
puts "just a couple more..."
ask "Do you like horchata?"
ask "Do you like flautas?"

puts
puts "Debriefing:"
puts "Thank you for participating"
puts
puts
puts

puts wets_bed
