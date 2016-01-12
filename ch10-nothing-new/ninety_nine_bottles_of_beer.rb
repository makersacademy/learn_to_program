require_relative 'english_number.rb'

beer = 9999

def bottle n
  n == 0 ? "no more bottles" : "#{english_number n} bottle" << ("s" unless n == 1).to_s
end

beer.downto(0) do |n|
  puts "#{bottle(n).capitalize} of beer on the wall, #{bottle n} of beer."
  break if n == 0
  puts "Take one down and pass it around, #{bottle n-1} of beer on the wall."
end

puts "Go to the store and buy some more, #{bottle beer} of beer on the wall."