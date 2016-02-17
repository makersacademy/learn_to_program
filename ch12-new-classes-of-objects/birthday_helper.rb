MONTHS = {Jan: 1, Feb: 2, Mar: 3, Apr: 4, May: 5, Jun: 6,
         Jul: 7, Aug: 8, Sep: 9, Oct: 10, Nov: 11, Dec: 12}

def convert_2_array
  line_arr = []
  File.read(' birthdates.txt' ).each_line do |line|
    line_arr << line.chomp
  end
  line_arr
end

def birthday_helper
  list = convert_2_array
  puts "what name? "
  name = gets.chomp
  month_day =""
  birth_year, birth_month, birth_day = 0, 0, 0
  month = 0
  list.each do |person|
    person_details = person.split(",")
    if person_details[0] == name
      birth_year = person_details[2].strip.to_i
      birth_month = person_details[1].split(" ")[0]
      MONTHS.each_pair do |key, value|
        if key == birth_month.to_sym
          birth_month = MONTHS[key].to_i
          break
        end
      end
      birth_day = person_details[1].split(" ")[1].to_i
      break
    end
  end

  today =Time.new
  today_date =[today.day, today.month, today.year]
  age = Time.new.year - birth_year
  if today_date[1] <birth_month || (today_date[1] == birth_month &&today_date[0] < birth_day)
    puts "#{name} still has his birthday to come this year"
    puts "#{name} is #{age -1} and will be #{age} this year"
  else
    puts "#{name} has turned #{age} this year"
  end
end

birthday_helper

