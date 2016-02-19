MONTHS = {january: 1, february: 2, march: 3, april: 4, may: 5, june: 6, july:7, august: 8, september: 9, october: 10, november: 11, december: 12}

def date_of_birth
  puts "What year were you born in? "
  birth_year = gets.chomp.to_i
  puts "What month were you born in?"
  puts "Write the full name"
  birth_month = gets.chomp.downcase.to_sym
  month = ''
  MONTHS.each do |key, value|
    if key == birth_month
      month = MONTHS[key]
      break
    end
  end
  puts "What day were you born in? "
  birth_day = gets.chomp.to_i
  Time.new(birth_year, month, birth_day)
end

def age
  age_seconds = Time.new - date_of_birth
  age_years = (age_seconds/(365*24*60*60)).to_i
end

def spanks
  "SPANK!" * age
end