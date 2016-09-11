puts "Which year did you get born?"
year = gets.chomp.to_i
puts "Which month did you get born? Please give it in a numerical way (1-12)"
month = gets.chomp.to_i
puts "Which day did you get born?"
day = gets.chomp.to_i


birthday = Time.local(year, month, day)
older = 1
now = Time.new


while Time.local(year + older, month, day) < now
    puts "PRANK!!"
    older = older + 1
end
# your code here