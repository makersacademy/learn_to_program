def roman_numeral (num)
  roman_nr = ''

  how_many = num / 1000 #how meny thousends are in num
  roman_nr = roman_nr + ("M" * how_many) #gives "M" for every thousend
  num = num - how_many * 1000 #substracts thousends

  if num / 900 == 9
    roman_nr = roman_nr + "CM"
  elsif num / 400 == 4
    roman_nr = roman_nr + "CD"
  else
    how_many = num / 500 
    roman_nr = roman_nr + ("D" * how_many) 
    num = num - how_many * 500 

    how_many = num / 100 
    roman_nr = roman_nr + ("C" * how_many) 
    num = num - how_many * 100 
  end

  if num / 90 == 9
    roman_nr = roman_nr + "XC"
  elsif num / 40 == 4
    roman_nr = roman_nr + "XL"
  else
    how_many = num / 50 
    roman_nr = roman_nr + ("L" * how_many) 
    num = num - how_many * 50 

    how_many = num / 10 
    roman_nr = roman_nr + ("X" * how_many) 
    num = num - how_many * 10 
  end

  if num == 9
    roman_nr = roman_nr + "IX"
  elsif num == 4
    roman_nr = roman_nr + "IV"
  else
    how_many = num / 5
    roman_nr = roman_nr + ("V" * how_many) 
    num = num - how_many * 5

    how_many = num / 1
    roman_nr = roman_nr + ("I" * how_many) 
  end 
  roman_nr
end