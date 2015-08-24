def bottle

  beer = 10000.step(1, -1) {|x| puts "#{x} bottles of beer on the wall, #{x} of beer, take one down, pass it around, #{x-1} bottles of beer on the wall!"}

end

bottle
