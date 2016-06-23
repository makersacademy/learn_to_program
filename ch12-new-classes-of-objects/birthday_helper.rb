require 'date'
MUSIC_FILE = "/Users/newuser/Desktop/Makers/precourse/week2/learn_to_program/scrap_work/birthday_list.txt"

def get_birthday person
  birthdays = File.readlines MUSIC_FILE
  birthdays.each_with_index do |b, i|
    if b.split(/,/).first.downcase == person.downcase
      puts "#{b}"
      age_next_birthday birthdays[i].split(',').to_a
    end
  end

end

def age_next_birthday person_arr
  todays_date = DateTime.now
  birth_date = DateTime.parse("#{person_arr[1]} #{person_arr[2]}")
  how_old = todays_date.year - birth_date.year + 1
  puts "#{person_arr[0]} will be #{how_old} years old" if how_old > 1
  puts "#{person_arr[0]} will be #{how_old} year old" if how_old == 1
end

puts 'Please provide persons full name'
person = gets.chomp

get_birthday(person)
