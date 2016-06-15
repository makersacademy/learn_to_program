months = { 'january' => 1,
           'february' => 2,
           'march' => 3,
           'april' => 4,
           'may' => 5,
           'june' => 6,
           'july' => 7,
           'august' => 8,
           'september' => 9,
           'october' => 10,
           'november' => 11,
           'december' => 12 }

puts 'Hello, what year where you born in?'
year = gets.chomp.to_i
puts 'Could you also tell me what month you were born in?'
month = gets.chomp.downcase
puts 'Finally could you tell me the day of the month on which you where born?'
day = gets.chomp.to_i

dob = Time.gm(year, months[month], day)
years = ((Time.new - dob) / 31_557_600).floor
puts
puts 'Here are your spanks!'
years.times { puts 'SPANK!' }
