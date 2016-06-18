#Checks for four digits only
def valid_year?(year)
  /^\d{4}$/ === year
end

#Checks for 1 OR 2 digits only
def valid_day_date?(day_date)
  /^\d{1,2}$/ === day_date
end

@valid_dob_year = ''
@valid_dob_month = ''
@valid_dob_day = ''

def ask_year
  # Ask what year a person was born in
  dob_year = gets.chomp
  unless valid_year? (dob_year)
    puts "Your response must be in digits only and 4 numbers long (e.g. 1986)"
    ask_year
  else
    @valid_dob_year = dob_year
  end
end

def ask_month
  # then the month
  dob_month = gets.chomp
  unless valid_day_date?(dob_month)
    puts "Your response must be in digits only and 1 or 2 numbers long (e.g. June = 6 or November = 11)"
    ask_month
  else
    @valid_dob_month = dob_month.to_i
  end
end

def ask_day
  # and then the day
  dob_day = gets.chomp
  unless valid_day_date?(dob_day)
    puts "Your response must be in digits only and 1 or 2 numbers long (e.g. '8' for 8th day or '27' for 27th day)"
    ask_day
  else
    @valid_dob_day = dob_day.to_i
  end
end

puts "Hi! What year where you born in? Please enter using numbers only."
ask_year
puts "Thanks. And what month? Please enter using numbers only."
ask_month
puts "Great - finally what day of the month were you born? Please enter using numbers only."
ask_day

valid_dob = Time.local(@valid_dob_year, @valid_dob_month, @valid_dob_day)

#Figure out how old they are
puts
current_date = Time.new
age = (current_date - valid_dob) / ((8760 * 60) * 60)

# give them a big SPANK! for each birthday they have had.

puts "As you are #{age.to_i} years old I will give you a SPANK! for each year!"
puts
puts ("SPANK!!" + "\n") * age.to_i
