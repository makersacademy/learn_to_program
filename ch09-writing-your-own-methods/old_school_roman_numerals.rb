#!/Users/sara/.rvm/rubies/ruby-2.3.0/bin/ruby
def old_roman_numeral num
thousands = num / 1000
hundreds = (num % 1000) / 100
tens = (num % 100) / 10
singles = num % 10
new_num =''
new_hundreds=''
new_tens=''
new_singles=''

thousands.times {new_num << 'M'}

hundreds < 5 ? ((hundreds.times {new_hundreds << 'C'}) if hundreds > 0) : ((hundreds-5).times {new_hundreds <<'C'} ; new_hundreds = 'D' << new_hundreds)

tens < 5 ? (tens.times {new_tens << 'X'}) : ((tens-5).times {new_tens <<'X'} ; new_tens = 'L' << new_tens)

singles < 5 ? (singles.times {new_singles << 'I'}) :  ((singles-5).times {new_singles <<'I'} ; new_singles = 'V' << new_singles)

puts


new_num << new_hundreds << new_tens << new_singles

end

#puts old_roman_numeral(50)
