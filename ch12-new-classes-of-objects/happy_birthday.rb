def happy_SPANKday
  year = ''
  month = ''
  day = ''
  while !year.is_a?(Fixnum) == true
    puts "What year were you born in? Please answer numerically: "
    year = gets.chomp.to_i
  end
  while !month.is_a?(Fixnum)
    puts "What month were you born in? Please answer numerically: "
    month = gets.chomp.to_i
  end
  while !day.is_a?(Fixnum)
    puts "What day were you born on? Please answer numerically: "
    day = gets.chomp.to_i
  end

  years_old = (Time.new - Time.new(year,month,day))/(60 * 60 * 24 * 365)
  puts "Spank\n"*years_old
end# your code here

happy_SPANKday
