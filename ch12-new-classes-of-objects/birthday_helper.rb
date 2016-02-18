# your code here

birth_dates = {}
birth_dates["Christopher Alexander"] = "Oct 4, 1936"
birth_dates["Christopher Lambert"]   = "Mar 29, 1957"
birth_dates["Christopher Lee"]       = "May 27, 1922"
birth_dates["Christopher Lloyd"]     = "Oct 22, 1938"
birth_dates["Christopher Pine"]      = "Aug 3, 1976"
birth_dates["Christopher Plummer"]   = "Dec 13, 1927"
birth_dates["Christopher Walken"]    = "Mar 31, 1943"
birth_dates["The King of Spain"]     = "Jan 5, 1938"


puts "Please give me a name from one of this list:"
puts birth_dates.keys
p = gets.chomp


# if person.include? birth_dates.keys
  puts "#{p}'s birthday is #{birth_dates[p]}"
#else
#  puts "That name is not in the list, please give another name."
#  name = gets.chomp
#end

date = birth_dates[p]
y = date[-4..-1]
year = y.to_i

b = Time.local(year)
t = Time.now
birthday_secs = t - b
secs_year = 60**2 * 24 * 365
b = birthday_secs / secs_year
birthday = b.floor

puts "On #{p}'s next birthday, he will be #{birthday} years old!"