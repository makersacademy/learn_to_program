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
  roman = ""
  roman = roman + "M" * (self / 1000)
  roman = roman + "D" * (self % 1000 / 500)
  roman = roman + "C" * (self % 500/ 100)
  roman = roman + "L" * (self % 100 / 50)
  roman = roman + "X" * (self % 50 / 10)
  roman = roman + "V" * (self% 10 / 5)
  roman = roman + "I" * (self % 5 )
  roman
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
