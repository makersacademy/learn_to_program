puts "Please put the day, month and year you were born. (DD/MM/YYYY)"
birthday = gets.chomp
d, m, y = birthday.split("/")
m.delete('0')
d.delete('0')

day = Time.local(y.to_i, m.to_i, d.to_i)
current = Time.new
age = 1

while Time.local(y.to_i + age, m.to_i, d.to_i) <= current
    puts "SPANK"
    age += 1
end
    