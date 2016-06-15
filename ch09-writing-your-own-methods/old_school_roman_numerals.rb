def old_roman_numeral num

  if num >3000 || num <1
    puts "Please enter a number in between 1 and 3000"
  end


rom_M = "M" * (num / 1000)
rom_D = "D" * (num % 1000 / 500)
rom_C = "C" * (num % 500 / 100)
rom_L = "L" * (num % 100 / 50)
rom_X = "X" * (num % 50 / 10)
rom_V = "V" * (num % 10 / 5)
rom_I = "I" * (num % 5 / 1)

rom = rom_M + rom_D + rom_C + rom_L + rom_X + rom_V + rom_I
#rom = "#{rom_M}#{rom_D}#{rom_C}#{rom_L}#{rom_X}#{rom_V}#{rom_I}"
puts rom.to_s
end
