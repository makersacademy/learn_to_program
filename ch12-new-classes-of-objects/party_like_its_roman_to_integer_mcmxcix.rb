
def roman_to_integer roman
  roman = roman.upcase

  numerals = Hash[
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000
  ]

  total = []
  arr = roman.split("")
  arr.map!{|x| numerals[x]}

  if arr.count == 1
    return arr[0]
  else
    while arr.count > 1
      arr[-1] <= arr[-2] ? total << arr[-1] + arr[-2] : total << arr[-1] - arr[-2]
      arr.pop(*2)
    end
    if arr[0] != nil
      return arr[0] + total.reduce(:+)
    else
      return total.reduce(:+)
    end
  end
end

=begin
Alternativ method Riya!!!

def roman_to_integer (roman)
    roman = roman.upcase
    hash = {"CM" =>900, "M" => 1000, "CD" => 400, "D" => 500, "XC" => 90, "C" => 100, "XL" => 40, "L" => 50, "IX" => 9, "X" => 10, "IV" => 4, "V" => 5, "I" => 1}

    puts "Please enter valid roman numeral." if roman =~ /[^CMDXLIV]/


    hash.each do |k, v|
        roman.gsub!(/#{k}/, " #{v} ")
    end

    instance_eval(roman.strip.tr(" ", "+"))
end


p roman_to_integer("MCMXIII")
=end
