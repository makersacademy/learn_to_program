def old_roman_numeral num
  rom = "M" * (num / 1000)
  rom = rom + "D" * (num % 1000 / 500)
  rom = rom + "C" * (num % 500 /100)
  rom = rom + "L" * (num % 100 /50)
  rom = rom + "X" * (num % 50 /10)
  rom = rom + "I" * (num % 10)
  rom
end
puts (old_roman_numeral (1355))
