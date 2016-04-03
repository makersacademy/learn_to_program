def ask question
  puts question
  reply = gets.chomp.downcase
  if reply == "yes"
  	return true
  elsif reply == "no"
  	return false
  else 
  	return "Please anwser yes or no."
  end
  wets_bed
end