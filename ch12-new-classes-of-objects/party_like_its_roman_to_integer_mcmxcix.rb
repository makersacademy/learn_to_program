def roman_to_integer roman
  # your code here
end

numerical = {"I" => 1, "IV" => 4, "V" => 5, "IX" => 9, "X" => 10, "XL" => 40, "L" => 50, "XC" => 90, "C" => 100, "CD" => 400, "D" => 500, "CM" => 900, "M" => 1000}

roman = "mcmxcix"
roman = roman.upcase
roman_split = []
roman_ready = []
roman_split = roman.split("")

a = 0
b = 1

until roman_split[b] == nil
 if numerical[roman_split[a]] < numerical[roman_split[b]]
   roman_ready << roman_split[a] + roman_split[b]
   roman_split.delete_at(b)
    a += 1
    b += 1
  else
  roman_ready << roman_split[a]
    a += 1
    b += 1
  end
end  

mod_num = 0
roman_ready.map(&:to_s)

roman_ready.each do |num|
  mod_num = mod_num + numerical[num]
end

puts mod_num