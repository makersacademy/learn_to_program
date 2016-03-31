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