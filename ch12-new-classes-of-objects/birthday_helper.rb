birthdays = Hash.new

File.read("birthdays.txt").each_line do |line| 
  line = line.chomp
  birthdays[line.downcase[0..-15]] = line[-12..-1]
end

puts 'Input name'
name = gets.chomp.downcase
puts "#{name.upcase}'s birthday is #{birthdays[name]}"
