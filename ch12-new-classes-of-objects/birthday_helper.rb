birth_dates = Hash.new {}

birthdays = File.read('../../../../../Desktop/testfiles/ruby_birthdays.txt')

birthdays.split("\n").each {|line| 
	before_comma = line.to_s.split(",")[0]
	birth_dates[before_comma] = line[-12..-1]
}

puts "Whose birthday do you want to know?"
target = gets.chomp

birth_dates[target]