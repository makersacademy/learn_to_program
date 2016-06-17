def ask question
  # your code here
  question = puts "please answer \"yes\" or \"no\" "
while true 
answer = gets.chomp
if answer == "yes" then return true
  elsif answer == "no" then return false
end
puts question
end

comp =  "do you use a PC?"
puts comp
