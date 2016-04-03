=begin
“Modern” Roman numerals. Eventually, someone thought it would be ter- ribly clever if putting a smaller number before a larger one meant you had to subtract the smaller one. As a result of this development, you must now suffer. Rewrite your previous method to return the new-style Roman numerals so when someone calls roman_numeral 4, it should return 'IV'.
=end

#How you could do it
def roman_numeral(num)
  thousands = (num / 1000)
  hundreds = (num % 1000 / 100)
  tens  = (num % 100 / 10)
  ones  = (num % 10)

  roman = 'M' * thousands

  if hundreds == 9
    roman = roman + 'CM'
  elsif hundreds == 4
    roman = roman + 'CD'
  else
    roman = roman + 'D' * (num % 1000 / 500)
    roman = roman + 'C' * (num % 500 / 100)
  end

  if tens == 9
    roman = roman + 'XC'
  elsif tens == 4
    roman = romann + 'XL'
  else
    roman = roman + 'L' * (num % 100 / 50)
    roman = roman + 'X' * (num % 50 / 10)
  end

  if ones == 9
    roman = roman + 'IX'
  elsif ones == 4
    roman = roman + 'IV'
  else
    roman = roman + 'V' * (num % 10 / 5)
    roman = roman + 'I' * (num % 5 / 1)
  end
  roman
end

# puts(roman_numeral(1999))

#How Chris Pine would do it
=begin
def roman_numeral num
  raise 'Must use positive integer' if num <= 0

  digit_vals = [['I', 5, 1],
                ['V', 10, 5],
                ['X', 50, 10],
                ['L', 100, 50],
                ['C', 500, 100],
                ['D', 1000, 500],
                ['M', nil, 1000]]

  roman = ''
  remaining = nil

  # Build string "roman" in reverse.
  build_rev = proc do |l,m,n|
    num_l = m ? (num % m / n) : (num / n)
    full  = m && (num_l == (m/n - 1))

  if full && (num_l>1 || remaining)
    # must carry
    remaining ||= l # carry l if not already carrying
  else
    if remaining
      roman << l + remaining
      remaining = nil end
      roman << l * num_l
    end
  end
  digit_vals.each {|l,m,n| build_rev[l,m,n]}

  roman.reverse
end

# puts(old_roman_numeral(1999))
=end