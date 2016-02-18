def roman_numeral num
  # your code here
  # USING 1999 AS AN EXAMPLE:
  thous = (num / 1000) # 1999 / 1000 = 1
  hunds = (num % 1000 / 100) # 1999 % 1000 / 100 = 9
  tens  = (num % 100 / 10) # 1999 % 100 / 10 = 9
  ones  = (num % 10) # 1999 % 10 = 9

  roman = 'M' * thous
  # thous = 1 so roman = "M" (M * 1 = M)

# M = 1000, D = 500, C = 100, L = 50, X = 10, V = 5, I = 1

  if hunds == 9
    # FOR THE EXAMPLE num = 1999, hunds == 9 so:
    roman = roman + 'CM'
    # roman = "M" + "CM" = MCM (1900)
    # roman = MCM which is currently 19 -> M = 9 and CM = 1000 - 100 = 900.
  elsif hunds == 4
    # For example num = 1400.
    roman = roman + 'CD'
    # D (500) - C (100) = 400
    # roman = M + CD = MCD (1400)
  else
    roman = roman + 'D' * (num % 1000 / 500)
    # For example, num = 1600 (i.e. not 1900 or 1400).
    # 1600 % 1000 / 500 = 1 so puts out 1 D because D = 500.
    # roman = M + D = MD (1500 so far)
    roman = roman + 'C' * (num % 500 / 100)
    # 1600 % 500 / 100 = 1 so puts out 1 C because C = 100 and 500 and 100 make 600 for the 1600.
    # roman = MD + C = MCD (1600)
  end

  if tens == 9
    # FOR THE EXAMPLE, num = 1999, tens == 9 so:
    roman = roman + 'XC'
    # puts out C (100) - X (10) = 90 so roman = 199 -> M = 1000, CM = 900, XC = 90
    # roman = MCM + XC = MCMXC (1990)
  elsif tens == 4
    # For example num = 1940
    roman = roman + 'XL'
    # Puts out L (50) - X (10) = XL (40).
    # roman = MCM + XL = MCMXL (1940)
  else
    # For example num = 1920 (i.e. not 1990 or 1940) roman = MCM (1900)
    roman = roman + 'L' * (num % 100 / 50)
    # 1920 % 100 / 50 = 0. tens = 2 and L = 50 so don't need to add an L.
    roman = roman + 'X' * (num % 50 / 10)
    # 1920 % 50 / 10 = 2. Puts out 2 Xs because X = 10 and 10 + 10 = 20.
    # roman = MCM + X = MCMX (1920)
  end

  if ones == 9
    # FOR THE EXAMPLE num 1999, roman = MCMXC (1990), ones == 9 so:
    roman = roman + 'IX'
    # Puts out X (10) - I (1) = 9.
    # roman = MCMXC + IX = MCMXCIX (1999)
  elsif ones == 4
    # For example num = 1994 roman = MCMXC (1990)
    roman = roman + 'IV'
    # Puts out V (5) - I (1) = 4
    # roman = MCMXC + IV = MCMXCIV (1994)
  else
    # For example, num = 1998 roman = MCMXC (1990)
    roman = roman + 'V' * (num % 10 / 5)
    # 1998 % 10 / 5 = 1
    # Puts out 1 V because ones = 8, need to add 3 more to make 8 from 5.
    # roman = MCMXC + V = MCMXCV (1995)
    roman = roman + 'I' * (num % 5 / 1)
    # 1998 % 5 / 1 = 3.
    # Puts out 3 Is.
    # roman = MCMXCV + III = MCMXCVIII.
    # It is not MCMXCIX because you can print up to 3 Is in roman numerals before you have to use the subtract method.
  end
  roman
end

# puts(roman_numeral(1999))