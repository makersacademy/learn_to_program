my_birthday = Time.new(1993,7,27)
my_name = "James Stonehill"
name_dob = {}

def age(dob)
    now = Time.now.utc
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end

File.read('birthdays.txt').each_line do |line|
  line = line.chomp

  name, date, year = line.split(',')

  day_of_birth = /\d+/.match(date)
  month_of_birth = /[a-zA-Z]+/.match(date)
  year_of_birth = /\d{4}/.match(year)

  day_of_birth = day_of_birth.to_s.to_i
  month_of_birth = month_of_birth.to_s.to_i
  year_of_birth = year_of_birth.to_s.to_i

  dob2 = Time.new(year_of_birth, month_of_birth, day_of_birth)
  puts dob2
end
