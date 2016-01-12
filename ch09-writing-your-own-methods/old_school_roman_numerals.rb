#original solution that wouldn't pass rspec
=begin

KEY = [
  ["M", 1000], 
  ["D", 500], 
  ["C", 100], 
  ["L", 50], 
  ["X", 10], 
  ["V", 5], 
  ["I", 1], 
]

def old_school_roman n
  roman = ""

  KEY.each do |x|
    letter = x[0]
    value = x[1]
    roman += letter*(n / value)
    n = n % value
  end
  return roman
end

puts old_school_roman 1005

=end 



def old_roman_numeral num
  raise 'Must use positive integer' if num <= 0

  roman = ''

  roman << 'M' * (num / 1000) 
  roman << 'D' * (num % 1000 / 500) 
  roman << 'C' * (num % 500 / 100) 
  roman << 'L' * (num % 100 / 50) 
  roman << 'X' * (num % 50 / 10) 
  roman << 'V' * (num % 10 / 5) 
  roman << 'I' * (num % 5 / 1)

  roman
end

# puts(old_roman_numeral(1999))
