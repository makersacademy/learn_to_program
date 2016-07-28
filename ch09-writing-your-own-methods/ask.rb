def ask question
  while true
    puts question
    reply=gets.chomp.downcase

    if reply=="yes"
      return true
    elsif reply=="no"
      return false
    end
      puts "Please answer yes or no"
  end
end

puts "hello and thank you for..."
puts

likes_tacos = ask "do you like eating tacos?"
wets_bed = ask "do you wet the bed?"

puts
puts "bed wetting: #{wets_bed}"
puts "likes tacos: #{likes_tacos}"
