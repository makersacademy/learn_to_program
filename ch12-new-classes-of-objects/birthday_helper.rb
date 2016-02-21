year = 1991
month = 06
day = 24

birthday = Time.local(year, month, day)
time = Time.new

age = 1

while Time.local(year + age, month, day) <= time
  puts "SPANK!"
  age = age + 1
end
