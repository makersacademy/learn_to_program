# Extend the Built-in Classes - create shuffle mthd on array method

class Array #state the class you want to affect
  def shuffle #create the method
    arr = self #use self to refer to the object (the integer) using the mthd
              #so arry is the object we have put in
    shuf = [] #create  new aray

    #Copy the old shuffle method

    while arr.length > 0

      rand_index = rand(arr.length) #randomly pick one elemtn of array

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

      #replace original array with the new smaller array
      arr = new_arr
    end
    shuf
  end
end

  # Extend the Built-in Classes - make both 'factorial' and 'to_roman' an integer method

  class Integer
    def factorial
      if self <= 1
        1
      else
        self * (self-1).factorial
      end
    end

#Old-school roman numberals chosen to save space
    def to_roman
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

puts [1,2,3,4,5].shuffle
puts 7.factorial
puts 73.to_roman
