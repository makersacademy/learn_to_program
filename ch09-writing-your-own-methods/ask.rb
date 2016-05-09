def ask question
  while true

puts question

reply = gets.chomp.downcase

if reply == "yes"
   return true
elsif reply == "no"
   return false
else
	"please answer yes or no" 
	return
end
end
end