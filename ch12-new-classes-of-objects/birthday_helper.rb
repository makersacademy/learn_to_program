birthdates = File.read('birthdays.txt').split("\n")

birthdays_hash = birthdates.inject({}) do |h, a|
  splt = a.split(".")
  h[splt[0]] = splt[1]
  h
end

puts "Whose Birthday have you forgotten again?"
name = gets.chomp

bday = birthdays_hash[name]

def age_to_be birthdate

bday = birthdate.split("/")
bdate = Time.gm(bday[2],bday[1],bday[0])
now = Time.new
age = now.year - bdate.year

age += 1 if now.month > bdate.month || (now.month == bdate.month && now.day > bdate.day)

age

end

puts "#{name}'s Birthday is #{bday[0..4]}, they will be #{age_to_be bday}"
