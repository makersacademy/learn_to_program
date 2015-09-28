def wall_beer n 

  beers = " bottles of beer "
  beer = " bottle of beer "

  while n != 1
    puts n.to_s+beers + "on the wall."
    puts n.to_s+beers
    n -= 1
    puts "Take one down and pass it around, "+n.to_s+ beers+" on the wall"
    
  end
  
  puts '1'+beer + "on the wall."
  puts '1'+beer
  puts "Take one down and pass it around, 0"+beers+" on the wall"
  puts
  puts "No more "+beer+"on the wall, no more"+beer+"."
  



end

wall_beer 99999999