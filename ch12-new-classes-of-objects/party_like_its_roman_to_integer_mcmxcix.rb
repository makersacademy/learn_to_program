=begin

Party like it’s roman_to_integer ' mcmxcix '! Come on, you knew it was coming,
didn’t you? It’s the other half of your roman_numeral 1999 method. Make sure
to reject strings that aren’t valid Roman numerals.

=end

def roman_to_integer roman

  result = 0
  roman_dict = { "I" => 1, "II" => 2, "III" => 3, "IV" => 4, "V" => 5, "VI" => 6,
                 "VII" => 7, "VIII" => 8, "IX" => 9, "X" => 10, "XX" => 20, "XXX" => 30,
                 "XL" => 40, "L" => 50, "LX" => 60, "LXX" => 70, "LXXX" => 80, "XC" => 90,
                 "C" => 100, "CC" => 200, "CCC" => 300, "CD" => 400, "D" => 500,
                 "DC" => 600, "DCC" => 700, "DCCC" => 800, "CM" => 900 }
  roman_dict.default = 0  # another way would be to declare the key "" with value 0

capital_roman = roman.upcase

# from http://stackoverflow.com/questions/267399/how-do-you-match-only-valid-roman-numerals-with-a-regular-expression
  roman_pattern = /^(M{0,4})(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/

  unless capital_roman =~ roman_pattern
    puts "not a roman number.  Program exit..."
    exit
  end

# interesting way of capturing regex groups, example taken from:
# http://stackoverflow.com/questions/9303984/ruby-regexp-group-matching-assign-variables-on-1-line

  thousands,hundreds,tens,units = capital_roman.match(roman_pattern).captures

  result += thousands.size*1000 + roman_dict[hundreds] + roman_dict [tens] + roman_dict[units]

end

puts roman_to_integer("CM")   # test exit condition
