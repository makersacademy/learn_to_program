def old_roman_to_integer roman

  roman.upcase!
  romanarr = roman.split("")

cm = 0

 romanarr.each do |x|
puts x.to_i
 end






puts cm

end

old_roman_to_integer("mcmxcix")
