# This assumes file format is the same as show in the book
def birthday_helper(filename)
  file = File.read filename
  puts "Who's birthday are you looking for?"
  name = gets.chomp
  person = ''
  months = {"Jan" => 1, "Feb" => 2, "Mar" => 3, "Apr" => 4, "May" => 5, "Jun" => 6, "Jul" => 7, "Aug" => 8, "Sep" => 9, "Oct" => 10, "Nov" => 11, "Dec" => 12 }
  # Search file and return the line with matching name
  file.each_line do |line|
    if line.include?(name)
      person = line.chomp
    end
  end
  # Split the line
  a = person.split(",")
  # Save the date
  day = a[1][5..7].to_i
  # Save the month
  month = a[1][1..3]
  # Convert the month to it's numerical value
  months.each do |k,v|
    month = v if k == month
  end
  # Save the year
  year = a[2][1..4].to_i
  # Full date of birth
  born = Time.new(year, month, day)
  # Upcoming birthday
  birthday = Time.new(2016, month, day)
  # Days until next birthday
  days_left = ((birthday - Time.now) / 60 / 60 / 24).round
  # Their age
  age = ((birthday - born) / 60 / 60 / 24 / 365).round
  puts "Next birthday will be on #{day}.#{month}.16 (#{days_left} days to go). #{name} will be #{age} years old!"
end

birthday_helper('names.txt')