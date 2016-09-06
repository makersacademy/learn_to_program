def ask(question)
  while true
  puts question

  reply = gets.chomp.downcase
    if reply == "yes"
      return true

    elsif reply == "no"
      return false 

    else
      puts "Please answer 'yes' or 'no'."
    end
  end
  answer 
end

ruby = ask("Do you like learning ruby?")
puts ruby
