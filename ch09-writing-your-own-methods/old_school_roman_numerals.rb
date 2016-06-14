def old_roman_numeral(num)
  # I =1 V=5 X=10 L=50 C=100 D=500 M=1000
  # orn stands for old roman numeral
orn = ""

orn += 'M' if num % 1000 != num
orn += 'D' if num % 500 != num
orn += 'C' if num % 100 != num
orn += 'L' if num % 50 != num
orn += 'X' if num % 10 != num
orn += 'V' if num % 5 != num
orn += 'I' if num % 1 != num
puts orn
end

old_roman_numeral(2016)
old_roman_numeral(113)

=begin
if num % 1000 != num
  orn += 'M'
end
if num % 500 != num
  orn += 'D'
end
if num % 100 != num
  orn += 'C'
end
if num % 50 != num
  orn += 'L'
end
if num % 10 != num
  orn += 'X'
end
if num % 5 != num
  orn += 'V'
end
if num % 1 != num
  orn += 'I'
end
puts orn
end
=end

=begin

orn = case num
  when num % 1000 != num then orn += "M"
  when num % 500 != num then orn += "D"
  when num % 100 != num then orn += "C"
  when num % 50 != num then orn += "L"
  when num % 10 != num then orn += "X"
  when num % 5 != num then orn += "V"
  when num % 1 != num then orn += "I"
  else "Invalid Number"
  end

puts orn
=end
