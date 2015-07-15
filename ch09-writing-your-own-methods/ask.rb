def ask question

puts question 
reply = gets.chomp.downcase

while reply != "yes" && reply != "no"
puts "We only accept yes or no!"
puts question
reply = gets.chomp.downcase
end

if reply == "yes"
return true
else
return false
end

end
