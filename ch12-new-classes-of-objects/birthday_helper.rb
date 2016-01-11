def next_birthday dob
  months = {

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


  month = months[dob[0..2]]
  day = dob[4..5].to_i
  year = dob[-4..-1].to_i

  their_birthday_this_year = Time.local(Time.now.year, month, day)
  current_date = Time.now

  if their_birthday_this_year > current_date
    #hasn't happened yet
    next_bday = Time.local(Time.now.year, month, day).to_s
    return "#{dob[0..2]} #{day}, #{next_bday[0..3]}"
  else
    #had it this year
    next_bday = Time.local(Time.now.year+1, month, day).to_s
    return "#{dob[0..2]} #{day}, #{next_bday[0..3]}"
  end

end


filename = "birthdays.txt"
birth_dates = {}

read_string = File.read filename

read_string.each_line do |line|
end_of_name = line.index(',')
hash_key = line[0..end_of_name-1]
hash_value = line[end_of_name+2..-1]
birth_dates[hash_key] = hash_value.chomp
end

puts "Please enter a name:"
name = gets.chomp

if !birth_dates.include? name
  puts "That name cannot be found."
else
  puts "You have selected #{name}, who was born on #{birth_dates[name]}."
  puts "Their next birthday will be on #{next_birthday birth_dates[name]}."

  birth_year = birth_dates[name][-4..-1]
  next_birthday = next_birthday birth_dates[name]
  next_birthday_year = next_birthday[-4..-1]
  age_next_birthday = next_birthday_year.to_i - birth_year.to_i

  puts "They will be #{age_next_birthday} years old."

end
