Born=DateTime.new(1992,8,2,6,34,59)
Billion=Born + Rational(1000000000, 86400)

puts "I will be one billion seconds old on the #{Billion.to_date.to_s.chomp} at #{Billion.to_time.strftime "%M:%S"}"