def old_roman_to_integer roman

  roman.upcase!
  romanarr = roman.split("")

  m = romanarr.select {|x| x == "M"}
  d = romanarr.select {|x| x == "D"}
  c = romanarr.select {|x| x == "C"}
  l = romanarr.select {|x| x == "L"}
  x = romanarr.select {|x| x == "X"}
  v = romanarr.select {|x| x == "V"}
  i = romanarr.select {|x| x == "I"}

  puts m
















end






old_roman_to_integer("mcmxcix")
