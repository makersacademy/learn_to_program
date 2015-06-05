puts Time.gm(1990, 3, 8) + 10**9

puts "which year did you born?"
bornYear = gets.chomp.to_i

puts "which month did you born?"
bornMonth = gets.chomp.to_i

puts "which day did you born?"
bornDay  = gets.chomp.to_i

age = 1
while Time.local(bornYear + age,bornMonth,bornDay) <= Time.new
    puts 'SPANK'
    age = age + 1
end



