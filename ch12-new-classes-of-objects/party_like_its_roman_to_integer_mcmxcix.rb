def roman_to_integer roman

  rom_hash = {'M' =>1000,
              'a'=>900,
              'D'=>500,
              'b'=>400,
              'C'=>100,
              'c'=>90,
              'L'=>50,
              'd'=>40,
              'X'=>10,
              'e'=>9,
              'V'=>5,
              'f'=>4,
              'I'=>1}

  roman.upcase!

  #Sub out special exceptions
  roman = roman.gsub("CM", "a")
  roman = roman.gsub("CD", "b")
  roman = roman.gsub("XC", "c")
  roman = roman.gsub("XL", "d")
  roman = roman.gsub("IX", "e")
  roman = roman.gsub("IV", "f")

  letters = roman.split("")
  int = 0
  letters.each do |letter|
    int = int + rom_hash[letter]
  end

  int

end
