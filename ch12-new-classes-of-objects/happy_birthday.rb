puts "What year were you born?"
year = gets.chomp.to_i
puts "And what month?"
month = gets.chomp.downcase
if month == "january"
    m = 1
    elsif month == "february"
    m = 2
    elsif month == "march"
    m = 3
    elsif month == "april"
    m = 4
    elsif month == "may"
    m = 5
    elsif month == "june"
    month = 6
    elsif month == "july"
    month = 7
    elsif month == "august"
    month = 8
    elsif month == "september"
    month = 9
    elsif month == "october"
    month = 10
    elsif month == "november"
    month = 11
    elsif month == "december"
    month = 12
else puts "Please enter a month!"
end
puts "And what date?"
date = gets.chomp.to_i
birth = Time.new(year, m, date)
difference = Time.new - birth
age = difference / (60 * 60 * 24 * 365)
puts "SPANK!\n" * ages