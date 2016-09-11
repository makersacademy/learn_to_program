class Array
  def shuffle
    shuffled_arr = []
    length_of_array = self.length
    while length_of_array > 0
    length_of_array = self.length
    shuffle_entry = rand(length_of_array)
    entry_to_push = self[shuffle_entry]
    shuffled_arr.push(entry_to_push)
    self.delete_at(shuffle_entry)
  end
  while shuffled_arr.length > 0
    self.push(shuffled_arr.pop)
  end
    puts self
  end
end

class Integer
def to_roman
  thousands_to_convert = (self / 1000)
  hundreds_to_convert = (self % 1000 / 100)
  tens_to_convert = (self % 100 / 10)
  units_to_convert = self % 10

if thousands_to_convert <= 3
  converted_thous = "M" * thousands_to_convert
end

if hundreds_to_convert <= 3
  converted_huns = "C" * hundreds_to_convert
elsif hundreds_to_convert == 4
  converted_huns = 'C' + 'D'
elsif hundreds_to_convert == 5
  converted_huns = 'D'
elsif hundreds_to_convert > 5 && hundreds_to_convert < 9
  converted_huns = 'D' + "C" * (hundreds_to_convert - 5)
elsif hundreds_to_convert == 9
  converted_huns = 'C' + "M"
end

if tens_to_convert <= 3
  converted_tens = "X" * tens_to_convert
elsif tens_to_convert == 4
  converted_tens = 'X' + 'L'
elsif tens_to_convert == 5
  converted_tens = 'L'
elsif tens_to_convert > 5 && tens_to_convert < 9
  converted_tens = 'L' + "X" * (tens_to_convert - 5)
elsif tens_to_convert == 9
  converted_tens = 'X' + "C"
end

if units_to_convert <= 3
  converted_units = "I" * units_to_convert
elsif units_to_convert == 4
  converted_units = 'I' + 'V'
elsif units_to_convert == 5
  converted_units = 'V'
elsif units_to_convert > 5 && units_to_convert < 9
  converted_units = 'V' + "I" * (units_to_convert - 5)
elsif units_to_convert == 9
  converted_units = 'I' + "X"
end

converted_num = converted_thous + converted_huns + converted_tens + converted_units
puts converted_num
converted_num
end

def factorial
if self < 0
  return "no"
end

if self <=1
  1
else
  self * (self-1).factorial
end
end

end


114.to_roman
puts 114.factorial
