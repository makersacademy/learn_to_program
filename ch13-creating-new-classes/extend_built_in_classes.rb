=begin
class Integer

    def factorial
      if self <= 1
        1
      else
        self * (self-1).factorial
      end
    end

  def old_roman_numeral num

    converted = ""

    converted << "M" * (num / 1000)
    converted << "D" * (num % 1000 / 500)
    converted << "C" * (num % 500 / 100)
    converted << "L" * (num % 100 / 50)
    converted << "X" * (num % 50 / 10)
    converted << "V" * (num % 10 / 5)
    converted << "I" * (num % 5 / 1)

    converted

  end
end

class Array
  def shuffle arr
    new_arr = []

    while (arr.any?) do
      new_arr << arr.delete_at(rand(arr.length))
    end

    new_arr
  end
end
=end

class Array
   def shuffle
     arr = self
     # Now we can just copy the old shuffle method.
     shuf = []

     while arr.length > 0
       # Randomly pick one element of the array.
       rand_index = rand(arr.length)

       # Now go through each item in the array,
       # putting them all into new_arr except for
       # the randomly chosen one, which goes into
       # shuf.
       curr_index = 0
       new_arr = []
       arr.each do |item|
         if curr_index == rand_index
           shuf.push item
        else
           new_arr.push item
         end

         curr_index = curr_index + 1
       end
       # Replace the original array with the new,
       # smaller array.

       arr = new_arr
     end
     shuf
   end
 end
# note modern ruby has already has a built in shuffle method

class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
  def to_roman
    # I chose old-school roman numerals just to save space.
    roman = ''

    roman = roman + 'M' * (self / 1000)
    roman = roman + 'D' * (self % 1000 / 500)
    roman = roman + 'C' * (self % 500 / 100)
    roman = roman + 'L' * (self % 100 / 50)
    roman = roman + 'X' * (self % 50 / 10)
    roman = roman + 'V' * (self % 10 / 5)
    roman = roman + 'I' * (self % 5 / 1)

    roman
  end
end
