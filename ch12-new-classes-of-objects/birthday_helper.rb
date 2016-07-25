# hash to store my birthdays
@birthdays = {}

# get the birthdays and store them in a giant string
birthdayTxt = File.read("birthdays.txt")

# split the string up by each line and store each line as an element in an array
birthArr = birthdayTxt.each_line.to_a

# iterate over the irray and grab the relevant pieces and put them in the hash
birthArr.each do |x|
  temp = x.split(', ')
  tempDate = temp[1].to_s + " " + temp[2].to_s.chomp
  @birthdays[temp[0]] = tempDate
end

# Find out Who's birthday do we want?

puts "Who\'s birthday do you want to know?"
person = gets.chomp

if @birthdays[person] == nil
  puts "Sorry! I don't have their birthday in my list. Try another one!"
else

  # figure out when their next birthday is

  def next_birthday name
    bday = @birthdays[name].split(" ")
    return bday[0] + " " + bday[1]
  end

  # figure out how old they are (but couldn't really make it work for the amount of time I spent on this!)

  def how_old name
    bday = @birthdays[name].split(" ")
    return (Time.new.year - bday[2].to_i)
  end

  puts "#{person}'s next birthday is #{next_birthday(person)}. They are #{how_old(person)} ... SOOOO old!"

end
