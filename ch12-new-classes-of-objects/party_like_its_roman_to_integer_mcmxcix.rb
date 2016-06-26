def roman_to_integer roman
  # your code here
  digit_vals = {"i" => 1, "v" => 5, "x" => 10, "l" => 50, "c" => 100, "d" => 500, "m" => 1000}

total = 0
prev = 0
index = roman.length - 1

while index >= 0
  c = roman[index].downcase
  index = index -1
  val = digit_vals[c]
  if !val
    puts 'Not a roman numeral'
    return
  end
  if val < prev
    val = val * -1
  else
    prev = val
  end
  total = total + val
end
total
#roman = "mcmxcix"
#roman = roman.upcase
#roman_split = []
#roman_ready = []
#roman_split = roman.split("")

#a = 0
#b = 1

#until roman_split[b] == nil
 #if numerical[roman_split[a]] < numerical[roman_split[b]]
#   roman_ready << roman_split[a] + roman_split[b]
#   roman_split.delete_at(b)
#    a += 1
#    b += 1
#  else
#  roman_ready << roman_split[a]
#    a += 1
#    b += 1
#  end
#end

#mod_num = 0
#roman_ready.map(&:to_s)

#roman_ready.each do |num|
#  mod_num = mod_num + numerical[num]
#end

#puts mod_num

end
roman_to_integer("i")
#roman_to_integer("mcmxcix")
