alpha = Array.new + [12345]
beta = String.new + 'hello'
karma = Time.new

puts "alpha = #{alpha}"
puts "beta = #{beta}"
puts "karma = #{karma}"

puts

time = Time.new   # Shows the exact moment in time code is run
time2 = time + 60 # One minute later

puts time
puts time2

puts

puts Time.local(2000, 1, 1)
puts Time.local(1976, 8, 3, 13, 31) # each value between comma is part of the time/date - uyou can be as precise as required

puts

puts Time.gm(1955, 11, 5) # gm defines GMT as the time zone

puts

if time < time2
  puts "#{time} is before #{time2}"
else
  puts "#{time2} is before #{time}"
end

puts

puts "There are #{time2 - time} seconds between #{time2} and #{time}"

puts

# Hases

dict_array = [] # array literal; same as doing Array.new
dict_hash  = {} # hash literal; same as doing Hash.new

dict_array[0]       = 'candle'
dict_array[1]       = 'glasses'
dict_array[2]       = 'truck'
dict_array[3]       = 'Alicia'
dict_hash['shia-a'] = 'candle'
dict_hash['shaya']  = 'glasses'
dict_hash['shasha'] = 'truck'
dict_hash['sh-sha'] = 'Alicia'

dict_array.each do |word|
  puts word
end

dict_hash.each do |c_word, word|
  puts "#{c_word}: #{word}"
end

puts

# This is your range literal
letters = 'a'..'c'

# Convert range to Array - test shows they are the same by returning true
puts (['a','b','c'] == letters.to_a)

# Iterate over a range
('A'..'Z').each do |letter|
  print letter
end
puts

god_bless_the_70s = 1970..1979

puts god_bless_the_70s.min
puts god_bless_the_70s.max
puts (god_bless_the_70s.include?(1979  ))
puts (god_bless_the_70s.include?(1980  ))
puts (god_bless_the_70s.include?(1974.5))

puts

da_man = 'Mr. T'
big_T= da_man[4]
puts big_T
puts

puts "Hello. My name is Julian."
puts "I'm extremely perceptive."
puts "What's your name?"

name = gets.chomp
puts "Hi, #{name}."

if name[0] == 'C'
  puts 'You have excellent taste in footwear.'
  puts 'I can just tell.'
end
puts

prof = 'We tore the universe a new space-hole, alright!'
puts prof[12, 8]
puts prof[12..19] # 8 characters total
puts
def is_avi? filename
  filename.downcase[-4..-1] == '.avi'
end
# Vicarious embarrassment.
puts is_avi?('DANCEMONKEYBOY.AVI')
# Hey, I wasn't even 2 at the time...
puts is_avi?('toilet_paper_fiasco.jpg')
puts
