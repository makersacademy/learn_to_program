

99.downto(1) do |beers|
  puts "#{beers} bottle#{"s" if beers != 1} of beer on the wall,"
  puts "#{beers} bottle#{"s" if beers != 1} of beer,"
  puts "Take one down, pass it around,"
  puts "#{beers - 1} bottle#{"s" if beers - 1 != 1} of beer on the wall."
end
