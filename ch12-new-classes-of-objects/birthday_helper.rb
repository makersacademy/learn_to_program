def birthday_helper(name)
  Dir.chdir '/Users/murilodalri/Desktop'
  text = "Christopher Alexander, Oct 4, 1936\nChristopher Lambert, Mar 29, 1957\nChristopher Lee, May 27, 1922\nChristopher Lloyd, Oct 22, 1938\nChristopher Pine, Aug 3, 1976\nChristopher Plummer, Dec 13, 1927\nChristopher Walken, Mar 31, 1943\nThe King of Spain, Jan 5, 1938"

  filename = 'text.txt'
  File.open filename, 'w' do |f|
    f.write text
  end
  text = File.read filename

  birth_dates = Hash.new
  text.each_line do |line|
    line = line.chomp.split(", ", 2)
    birth_dates[line[0]] = line[1]
  end

  birth_dates[name]
end
