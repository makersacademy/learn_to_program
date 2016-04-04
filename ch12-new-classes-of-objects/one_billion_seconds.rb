def one_billion_seconds
puts "When is your birthday? - (in format 'Year,Month,Day')"
birthday = gets.chomp
one_billion_second_birthday = Time.new(birthday)+(10**9)
return "your billion second birthday is on #{one_billion_second_birthday}"
end

#works
