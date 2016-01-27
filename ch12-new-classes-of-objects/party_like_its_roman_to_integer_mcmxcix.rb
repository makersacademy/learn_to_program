def roman_to_integer roman
sum = 0
roman.upcase!

numerals = {
'M' => 1000,
'CM' => 900,
'D' => 500,
'CD' => 400,
'C' => 100,
'XC' => 90,
'L' => 50,
'XL' => 40,
'X' => 10,
'IX' => 9,
'V' => 5,
'IV' => 4,
'I' => 1}

while roman.length != 0
  if numerals[roman[0..1]] != nil
    sum += numerals[roman[0..1]]
    roman[0..1] = ''
  elsif numerals[roman[0]] != nil
    sum += numerals[roman[0]]
    roman[0] = ''
  else
    puts "NOT A VALID ROMAN NUMERAL!"
    exit
  end

end

sum
end

#p roman_to_integer('I')
=begin
I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000
=end

#XXIV
