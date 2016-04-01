def roman_to_integer roman
  roman.upcase!
  return "That's no roman numeral fool" unless check_is_roman? roman
  roman_to_int_recur roman, 0# your code here
end


def check_is_roman? roman
  roman.split('').map{|letter| 'MDCLXVI'.include? letter}.reduce(:&)
end


def roman_to_int_recur roman, ans

  roman_to_int_hsh = {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5, 'I' => 1, nil => 0}

  return ans if roman.length == 0

  if roman_to_int_hsh[roman[0]] < roman_to_int_hsh[roman[1]]
    ans += roman_to_int_hsh[roman[1]]-roman_to_int_hsh[roman[0]]
    roman_to_int_recur(roman[2..-1], ans)
  else
    ans += roman_to_int_hsh[roman[0]]
    roman_to_int_recur(roman[1..-1], ans)
  end

end

puts roman_to_integer 'mcmxcix'
