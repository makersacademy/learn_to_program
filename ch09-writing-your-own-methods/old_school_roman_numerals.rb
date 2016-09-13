# Write a method that when passed an integer between 1 and 3000 (or so)
# returns a string containing the proper old-school Roman numeral.

# M = 1000
# D = 500
# C = 100
# L = 50
# X = 10
# V = 5
# I = 1

# Hint: use the integer division and modulus methods

# How many times does each of those roman numerals factor into numberRequested?

# Example: 1759

# 1 x 1000 = M
# 1 x 500 = D
# 2 x 100 = CC
# 1 x 50 = L
# 0 x 10 = no Xs
# 1 x 5 = V
# 4 x 1 = IIII

# MDCCLVIIII

# How many times does 1,000 go into it? Put that many Ms.
# How many times does 500 go into the remainder? Put that many Ds.
# How many times does 100 go into the remainder? Put that many Cs.
# How many times does 50 go into the remainder? Put that many Ls.
# How many times does 10 go into the remainder? Put that many Xs.
# How many times does 5 go into the remainder? Put that many Vs.
# How many times does 1 go into the remainder? Put that many Is.

def old_roman_numeral num

  numberMs = "M" * (num / 1000)
  numberDs = "D" * ((num % 1000) / 500)
  numberCs = "C" * ((num % 500) / 100)
  numberLs = "L" * ((num % 100) / 50)
  numberXs = "X" * ((num % 50) / 10)
  numberVs = "V" * ((num % 10) / 5)
  numberIs = "I" * ((num % 5) / 1)

  puts numberMs + numberDs + numberCs + numberLs + numberXs + numberVs + numberIs

end
