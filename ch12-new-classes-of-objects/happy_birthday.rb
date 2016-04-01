puts "What year were you born in?"
year = gets.chomp.to_i

puts "What month were you born in?"
month = gets.chomp.downcase

puts "What day were you born in?"
day = gets.chomp.to_i

translate_month = { 'january' => 1, 'february' => 2, 'march' => 3,
                    'april' => 4, 'may' => 5, 'june' => 6, 'july' => 7,
                    'august' => 8, 'september' => 9, 'october' => 10,
                    'november' => 11, 'december' => 12}

now = Time.now
birth = Time.local(year, translate_month[month], day)

years_old = ((now - birth) / (60*60*24*365)).floor

years_old.times { puts "SPANK!" }

