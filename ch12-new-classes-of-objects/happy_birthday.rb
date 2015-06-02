def ask question, max
  valid_input = false
  while (valid_input == false)
    puts question
    number = gets.chomp
    if (number.to_i.to_s == number && number.to_i.between?(0, max))
      valid_input = true
    else 
      puts "Please enter a number between 1 and #{max}"
    end
  end
  return number
end 

year = ask "What year were you born in?", 2014

month = ask "What month were you born in? (Please enter as a number)", 12

day = ask "What day were you born on? (Please enter as a number)", 31

time_born = Time.mktime( year, month, day)
time_now = Time.new
time_diff = time_now - time_born
years_old = (time_diff / (60 * 60 * 24 * 365)).to_i

puts "You were born at #{time_born}"
puts "You are #{years_old}"
years_old.times {puts "SPANK" }