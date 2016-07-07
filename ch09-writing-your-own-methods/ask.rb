def ask question
  # your code here
while true 
puts question
answer = gets.chomp.downcase
return true if  answer == "yes"  
return false if answer == "no"
puts "please answer \"yes\" or \"no\" "
end
end 
comp =  "do you use a PC?"
puts comp
