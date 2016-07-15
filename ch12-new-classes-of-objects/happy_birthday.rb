MONTHS = {"January" => 1, "Febuary" => 2, "March" => 3, "April" => 4,
          "May" => 5, "June" => 6, "July" => 7, "August" => 8, "September" => 9,
          "October" => 10, "November" => 11, "December" => 12}

def birthday_check
  puts 'What year were you born? Please provide full year format'
  year = get_year
  puts 'What month were you born in? Please provide full month example: January'
  month = get_month
  puts 'What day were you born in?'
  day = gets.chomp.to_i

  curr_date = Time.new
  curr_year = curr_date.year
  curr_month = curr_date.month
  curr_day = curr_date.day

  # Calculate difference
  year_diff = curr_year - year
  month_diff = curr_month - month
  day_diff = curr_day - day

  puts "You are #{day_diff}, #{month_diff}, #{year_diff} years old"
  puts "You deserve #{year_diff} SPANKS!"
end

def get_year
  year = gets.chomp.to_i
  if(year < 1000)
    puts 'Incorrect format. Try again..'
    get_year
  end
  return year
end

def get_month
  month = gets.chomp.downcase
  MONTHS.each do |k, v|
    if(month == k.downcase)
      return v
    end
  end
  puts 'Incorrect, please check your spelling. Try again...'
  get_month
end

birthday_check
