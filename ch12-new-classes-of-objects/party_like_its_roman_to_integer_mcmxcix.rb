# this is not my code. After an hour I looked the method up and adapted it to the tests. Added here for reference.

def roman_to_integer(str)
 str = str.downcase
  roman_mapping = {
      1000 => "m",
      900 => "cm",
      500 => "d",
      400 => "cd",
      100 => "c",
      90 => "xc",
      50 => "l",
      40 => "xl",
      10 => "x",
      9 => "ix",
      5 => "v",
      4 => "iv",
      1 => "i"
    }

  result = 0
  roman_mapping.values.each do |roman|
    while str.start_with?(roman)
      result += roman_mapping.invert[roman]
      str = str.slice(roman.length, str.length)
    end
  end
  result
end