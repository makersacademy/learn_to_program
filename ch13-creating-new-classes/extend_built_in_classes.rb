class Integer
  def factorial
    if self < 0
      return "You cant take the factorial of a negative number"
    end

    if self <= 1
      1
    else
      self * self(num-1)
    end
  end
end

class Array
  def shuffle
    self

    shuf = []

    while self.length > 0
      # Randomly pick one element of the array.
      rand_index = rand(arr.length)

      # Now go through each item in the array,
      # putting them all into new_arr except for
      # the randomly chosen one, which goes into
      # shuf.
      curr_index = 0
      new_arr = []
      self.each do |item|
        if curr_index == rand_index
          shuf.push item
        else
          new_arr.push item
        end

        curr_index = curr_index + 1
      end
      # Replace the original array with the new,
      # smaller array.

      self = new_arr
    end
    shuf
  end
end

class Roman
  def old_roman_numeral
    self
    roman_hash = {
      1000 => "M",
       500 => "D",
       100 => "C",
        50 => "L",
        10 => "X",
          5 => "V",
          1 => "I",
      }

      roman_numeral = ""
      roman_hash.each do |value, letter|
        roman_numeral << letter * (self / value)
        self = self % value
      end
      return roman_numeral
  end
end
