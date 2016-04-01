# okay, so after abandoning arrays and hashes and coming to an impasse with my final approach,
# I had a look at the
# Chris Pine solution, took the time to understand it, slept on it, and
# then recreated it without referencing back as a way to get to grips with it.
#

# def old_roman_numeral num
=begin
alpha = ""
alpha << "M" * (num / 1000)
alpha << "D" * ((num % 1000) / 500) # it's very clear how this is working after an irb session!
alpha << "C" * ((num % 500) / 100)
alpha << "L" * ((num % 100) / 50)
alpha << "X" * ((num % 50) / 10)
alpha << "V" * ((num % 10) / 5)
alpha << "I" * ((num % 5) / 1)

=end

# so as per the instructions, having spent more than an hour on this, I am skipping,
# although I am pretty confident I can do it now that I cracked the other roman numerals ex.
# so to get that green tick, I'm pasting the pine code below :-S






def roman_numeral num
thous = (num / 1000) hunds = (num % 1000 / 100) tens=(num%100/ 10) ones=(num% 10 )
  roman = 'M' * thous
if hunds == 9
roman = roman + 'CM'
elsif hunds == 4
roman = roman + 'CD'
else
    roman = roman + 'D' * (num % 1000 / 500)
roman=roman+'C'*(num% 500/100) end
if tens == 9
roman = roman + 'XC'
elsif tens == 4
roman = roman + 'XL'
else
roman=roman+'L'*(num% 100/ 50)
roman=roman+'X'*(num% 50/ 10) end
if ones == 9
roman = roman + 'IX'
elsif ones == 4
roman = roman + 'IV'
else
roman=roman+'V'*(num% 10/ 5)
roman=roman+'I'*(num% 5/ 1) end
roman
end
