# your code here
load "english_number.rb"

def bottles_of_beer (n)
  n.downto(1).each do |beer|
    less_beer = english_number(beer - 1) unless beer == 0
    beer = english_number(beer)
    puts "#{beer.capitalize} bottles of beer on the wall, #{beer} bottles of beer."
    print "Take one down and pass it around, "
    print "#{less_beer.capitalize} bottles of beer on the wall.\n\n" if n > 2
    print "1 bottle of beer on the wall.\n\n"          if n == 2
    print "no more bottles of beer on the wall.\n\n"   if n == 1
  end
  puts "No more bottles of beer on the wall, no more bottles of beer."
  puts "Go to the store and buy some more, #{english_number(n)} bottles of beer on the wall."
end

bottles_of_beer 99