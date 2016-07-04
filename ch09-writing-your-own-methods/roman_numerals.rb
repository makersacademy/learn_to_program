#!/Users/sara/.rvm/rubies/ruby-2.3.0/bin/ruby
def roman_numeral num
  thousands = num / 1000
  hundreds = (num % 1000) / 100
  tens = (num % 100) / 10
  singles = num % 10
  new_num =''
  new_hundreds=''
  new_tens=''
  new_singles=''

  thousands.times {new_num << 'M'}

if hundreds == 4
  new_hundreds = 'CD'
elsif hundreds == 9
  new_hundreds = "CM"
else
  hundreds < 5 ? ((hundreds.times {new_hundreds << 'C'}) if hundreds > 0) : ((hundreds-5).times {new_hundreds <<'C'} ; new_hundreds = 'D' << new_hundreds)
end


if tens == 4
  new_tens = 'XL'
elsif tens == 9
  new_tens = 'XC'
else
  tens < 5 ? (tens.times {new_tens << 'X'}) : ((tens-5).times {new_tens <<'X'} ; new_tens = 'L' << new_tens)
end

if singles == 4
  new_singles = 'IV'
elsif singles == 9
  new_singles = 'IX'
else
  singles < 5 ? (singles.times {new_singles << 'I'}) :  ((singles-5).times {new_singles <<'I'} ; new_singles = 'V' << new_singles)
end

puts

new_num << new_hundreds << new_tens << new_singles

end

puts roman_numeral(3444)
puts roman_numeral(1)
puts roman_numeral(9)
puts roman_numeral(3999)
puts roman_numeral(99)
puts roman_numeral(44)
puts roman_numeral(157)
puts roman_numeral(489)
puts roman_numeral(976)
