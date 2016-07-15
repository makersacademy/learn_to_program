=begin
#outputs include +#### at the end to account for GMT(UTC) difference
puts Time.new
puts Time.new + 60
puts Time.local(1988,3,11,1,12)
puts Time.local(2000,1,1)

#ignore time difference and use GMT(UTC) time
puts Time.gm(2000,1,1)

#comparing times
time1 = Time.gm(2000,1,1) 
time2 = Time.gm(1999,12,31)
if time1 < time2
    puts "#{time1} happened before #{time2}"
else
    puts "#{time2} happened before #{time1}"
end
=end

=begin
#Hashes
dict_array = []
dict_hash = {}

dict_array[0] = 'candle'
dict_array[1] = 'glasses'
dict_array[2] = 'truck'
dict_array[3] = 'Alicia'

dict_hash['shia-a'] = 'candle'
dict_hash['shaya'] = 'glasses'
dict_hash['shasha'] = 'truck'
dict_hash['sh-sha'] = 'Alicia'

dict_array.each do |word|
    puts word
end

dict_hash.each do |c_word, word|
    puts "#{c_word}: #{word}"
end
=end

=begin
#Ranges
letters = 'a'..'c' #letters contain a-c
print letters.to_a #convert 'letters' var to an array and print array
puts 
puts(['a','b','c'] == letters.to_a)

#iterate over ranges
('A'..'Z').each do |letter|
    print letter
end
puts
=end