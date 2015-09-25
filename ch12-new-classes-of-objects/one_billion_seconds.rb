puts 'What year was I born?'
print '> '
year = gets.chomp

puts 'What month was I born?'
print '> '
month = gets.chomp

puts 'What day was I born?'
print '> '
day = gets.chomp

my_birthday = "#{year}, #{month}, #{day}"

puts "I am #{(Time.new - Time.local(my_birthday)).to_i} seconds old!"

one_billion_seconds = Time.local(my_birthday) + 1000000000
puts "I turned one billion seconds old on #{one_billion_seconds}"