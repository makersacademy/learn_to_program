def roman(num)
  roman_nr = ''

  how_meny = num / 1000 #how meny thousends are in num
  roman_nr = roman_nr + ("M" * how_meny) #gives "M" for every thousend
  num = num - how_meny * 1000 #substracts thousends

  if num / 900 == 9
    roman_nr = roman_nr + "CM"
  elsif num / 400 == 4
    roman_nr = roman_nr + "CD"
  else
    how_meny = num / 500 
    roman_nr = roman_nr + ("D" * how_meny) 
    num = num - how_meny * 500 

    how_meny = num / 100 
    roman_nr = roman_nr + ("C" * how_meny) 
    num = num - how_meny * 100 
  end

  if num / 90 == 9
    roman_nr = roman_nr + "XC"
  elsif num / 40 == 4
    roman_nr = roman_nr + "XL"
  else
    how_meny = num / 50 
    roman_nr = roman_nr + ("L" * how_meny) 
    num = num - how_meny * 50 

    how_meny = num / 10 
    roman_nr = roman_nr + ("X" * how_meny) 
    num = num - how_meny * 10 
  end

  if num == 9
    roman_nr = roman_nr + "IX"
  elsif num == 4
    roman_nr = roman_nr + "IV"
  else
    how_meny = num / 5
    roman_nr = roman_nr + ("V" * how_meny) 
    num = num - how_meny * 5

    how_meny = num / 1
    roman_nr = roman_nr + ("I" * how_meny) 
  end 
  return roman_nr
end

puts roman(5699)
puts roman(1404)