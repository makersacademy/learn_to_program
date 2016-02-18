# This programme convers roman numerals (between 1 & 1999) to integers
def roman_to_integer roman

  # setting the hashes for special and normal cases
  specials = {"IV" => 4, "IX" => 9, "XL" => 40,
              "XC" => 90, "CD" => 400, "CM" => 900}

  normals = {"I" => 1,  "V" => 5, "X" => 10, "L" => 50,
             "C" => 100, "D" => 500, "M" => 1000}

  integer = 0

  # 1. first converts the specials to number, add it to the integer
  # => remove from string once converted
  specials.each do |k, v|
    if roman.upcase.include?(k)
      integer += v
      roman.sub!(/#{k}/i, "")
    end
  end

  # 2. takes care of the normals
  roman.upcase.each_char do |x|
    if normals.keys.include?(x)
      integer += normals[x]
    end
  end

  # 3. returns the total
  integer
end

# lettets to use: I = 1, V = 5, X = 10,
# L = 50, C = 100, D = 500, M = 1000

# new roman numeral rules
# CM: 900, CD: 400, XC: 90, XL: 40, IX: 9, IV: 4
