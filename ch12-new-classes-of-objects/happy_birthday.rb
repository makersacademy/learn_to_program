puts "Which year were you born in?"
ans_y = gets.chomp.to_i
puts "Which month were you born in?"
ans_m = gets.chomp.to_i
puts "Which day were born on?"
ans_d = gets.chomp.to_i

now = Time.new

age = 0
while Time.gm(ans_y + age + 1, ans_m, ans_d) <= now
  age += 1
end

puts "You're #{age} years old! Here you go!"
age.times {|x| puts 'SPANK!'}
