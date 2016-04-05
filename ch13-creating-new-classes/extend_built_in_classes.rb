=begin
Extend the built-in classes. How about making your shuffle method on page
75 an array method? Or how about making factorial an integer method?
4.to_roman , anyone? In each case, remember to use self to access the object
the method is being called on (the 4 in 4.to_roman ).
=end

class Integer
  # your code here
  def factorial
    return fact = 1 if self == 0
    self*(self-1).factorial
  end

  def to_roman
    letters = { M: 1000,D: 500, C: 100, L: 50, X: 10, V: 5, I: 1 }
    result =""
    num = self
    letters.values.each_with_index do |value,index|
      digit = num / value
      result += letters.keys[index].to_s*digit
      num -= digit*value
    end
  result
  end
end

class Array
  def shuffle_manual
  suffled = []
  ary = self
  while ary.size > 0
    msecs = ((Time.now.to_f - Time.now.to_i)*10000).to_i
    index_random = msecs % ary.size
    index = 0
    temp = []
    ary.each do |e|
      suffled << e if index == index_random
      temp << e if index != index_random
      index += 1
    end
    ary = temp
  end
  suffled
  end
end


def shuffle_manual arr
  suffled = []
  while arr.size > 0
    msecs = ((Time.now.to_f - Time.now.to_i)*10000).to_i
    index_random = msecs % arr.size
    index = 0
    temp = []
    arr.each do |e|
      suffled << e if index == index_random
      temp << e if index != index_random
      index += 1
    end
    arr = temp
  end
  suffled
end


=begin
# class Array
#   def shuffle
#     sort_by{rand} # "self" is implied, remember?
#   end
# end
# note modern ruby has already has a built in shuffle method
class Integer
  def factorial
    raise 'Must not use negative integer' if self < 0
    (self <= 1) ? 1 : self * (self-1).factorial
  end
  def to_roman
    # I chose old-school roman numerals just to save space.
    raise 'Must use positive integer' if self <= 0
    roman = ''
    roman << 'M' * (self / 1000)
    roman << 'D' * (self % 1000 / 500)
    roman << 'C' * (self % 500 / 100)
    roman << 'L' * (self % 100 / 50)
    roman << 'X' * (self % 50 / 10)
    roman << 'V' * (self % 10 / 5)
    roman << 'I' * (self % 5 / 1)
    roman
  end
end
# Get ready for the pure awesome...
# p 7.factorial.to_roman.split(//).shuffle
=end

=begin

# class Array
#   def shuffle
#     arr = self
#     # Now we can just copy the old shuffle method.
#     shuf = []

#     while arr.length > 0
#       # Randomly pick one element of the array.
#       rand_index = rand(arr.length)

#       # Now go through each item in the array,
#       # putting them all into new_arr except for
#       # the randomly chosen one, which goes into
#       # shuf.
#       curr_index = 0
#       new_arr = []
#       arr.each do |item|
#         if curr_index == rand_index
#           shuf.push item
#         else
#           new_arr.push item
#         end

#         curr_index = curr_index + 1
#       end
#       # Replace the original array with the new,
#       # smaller array.

#       arr = new_arr
#     end
#     shuf
#   end
# end

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
  # puts [1,2,3,4,5].shuffle
  # puts 7.factorial
  # puts 73.to_roman
=end