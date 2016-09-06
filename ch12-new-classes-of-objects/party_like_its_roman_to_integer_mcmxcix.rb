def roman_to_integer roman
  allowed = ["I", "V", "X", "L", "C", "D","M"]
  combos = ["IV", "IX", "XL", "XC", "CD", "CM"]
  values = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  check = roman.upcase.split ""
  check.each_with_index do |x,y|
    unless (y == 0 && allowed.any? {|z| z == x}) || (y != 0 && (values[x] <= values[check[y-1]]))
      unless combos.any? {|z| z == check[y-1]+x} && (y < 2 || values[check[y-2]] >= values[x])
        puts "That is not a valid roman numeral.  Please try again"
        exit
      end
    end
  end
  number = 0
  check.each_with_index do |x,y|
    if values[check[y+1]] != nil
      if values[x] >= values[check[y+1]]
        number += values[x]
      else
        number -= values[x]
      end
    else
      number += values[x]
    end
  end
  return number
end
