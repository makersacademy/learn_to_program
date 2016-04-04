def birthday_check

  birth_dates =
  {
  "Christopher Alexander" => "Oct 04, 1936",
  "Christopher Lambert" => "Mar 29, 1957",
  "Christopher Lee" => "May 27, 1922",
  "Christopher Lloyd" => "Oct 22, 1938",
  "Christopher Pine" => "Aug 03, 1976",
  "Christopher Plummer" => "Dec 13, 1927",
  "Christopher Walken" => "Mar 31, 1943",
  "The King of Spain" => "Jan 05, 1938"
  }

  month_to_num =
  {
    "Jan" => 1,
    "Feb" => 2,
    "Mar" => 3,
    "Apr" => 4,
    "May" => 5,
    "Jun" => 6,
    "Jul" => 7,
    "Aug" => 8,
    "Sep" => 9,
    "Oct" => 10,
    "Nov" => 11,
    "Dec" => 12,
  }

puts "Please enter a name and i'll tell you when their next birthday is.."
input = gets.chomp.downcase
days = (birth_dates[input])[4..5].to_i
month = (birth_dates[input])[0..2]
month_num = month_to_num[month].to_i
years = (birth_dates[input])[-4..-1].to_i

if Time.new(years,month_num,days).month < Time.now.month
year_of_birthday = (Time.now.year) + 1
elsif Time.new(years,month_num,days).month > Time.now.month
  year_of_birthday = Time.now.year
age = Time.now.year - Time.new(years,month_num,days).year
end

return "#{input}'s next birthday is on the #{days} #{month}, #{year_of_birthday}. He will be #{age} years old"
end
