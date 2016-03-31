class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    numhash = {
      1000 => "M", 500 => "D", 100 => "C", 50 => "L",
      10 => "X", 5 => "V", 1 => "I" }
      num = self
      result = ""

      numhash.each do |number, rom|
        result << rom * (num/number)
        num = num % number
      end
      result
    end
end

#class array
#  def shuffle
#    recursive_shuffle(self,[])
#  end
#
#  def recursive_shuffle(unsorted_array, sorted_array)
#    randex = rand(0..unsorted_array.length-1)
#    unsorted_array.each {|val| sorted_array.push(unsorted_array.delete_at(randex))}
#    recursive_shuffle(unsorted_array, sorted_array) until unsorted_array.length == 0
#    sorted_array
#  end
#end
