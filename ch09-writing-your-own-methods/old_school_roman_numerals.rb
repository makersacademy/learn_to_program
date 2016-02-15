def one(num)
  "I"*(num%5)
end

def ten(num)
  num == 10 ? "X" : ("V"*(num/5)) +(one(num%5))
end

def fifty(num)
  num == 50 ? "L" : ("X"*(num/10))+(ten(num%10))
end

def hundred(num)
  num == 100 ? "C" : ("L"*(num/50))+(fifty(num%50))
end

def fivehundred(num)
  num == 500 ? "D" : ("C"*(num/100))+(hundred(num%100))
end

def thousand(num)
  num == 1000 ? "M" : ("D"*(num/500))+(fivehundred(num%500))
end

def old_roman_numeral num
num > 1000 ? "M"*(num/1000) + thousand(num%1000): thousand(num)
end