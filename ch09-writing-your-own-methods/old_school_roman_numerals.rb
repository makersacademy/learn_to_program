def old_roman_numeral num
  # your code here
  # M = 1000
  # D = 500
  # C = 100
  # L = 50
  # X = 10
  # V = 5
  # I = 1
  # single line? roman = ( ) or (( ) or ( ))?
  # why modulo previous num? prevent overlap? ---------- remainder/num e.g 1500/1000= 1M... 500 remains, to get D 1500%1000=500...500/500=1..1D
  roman = " "
  roman =roman+ "M" *(num/1000)
  roman =roman+ "D" *(num%1000/500)
  roman =roman+ "C" *(num%500/100)
  roman =roman+ "L" *(num%100/50)
  roman =roman+ "X" *(num%50/10)
  roman =roman+ "V" *(num%10/5)
  roman =roman+ "I" *(num%5/1)
  roman
end