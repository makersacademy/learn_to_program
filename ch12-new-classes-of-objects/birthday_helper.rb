birth_dates{['Pablo Picasso'] == 'Oct 25, 1881'
            ['Vincent Van Gogh'] == 'Mar 30, 1853'
            ['Leonardo Da Vinci'] == 'May 15, 1452'
            ['Claude Monet'] == 'Nov 14, 1840'
            ['Edouard Manet'] == 'Jan 23, 1832'
            ['Edvard Munch'] == 'Dec 12, 1863'
            ['Henri Matisse'] == 'Dec 31, 1869'
            ['Albert Einstein'] == 'Mar 14, 1879'}
            
            years = (60 * 60 * 24 * 365)
            
File.read('birthdates.txt').each_line do |line|
  line = line.chomp
  first_comma = 0
  while line[first_comma] != ',' &&
      first_comma < line.length
    first_comma = first_comma + 1
  end

  name = line[0..(first_comma - 1)]
  date = line[-12..-1]
  birth_dates[name] = date
end

puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birth_dates[name]

if date == nil
  puts "Oooh, I don't know that one..."
else
  puts date[0..5]
end