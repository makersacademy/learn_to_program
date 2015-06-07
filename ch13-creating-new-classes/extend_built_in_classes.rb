class Array

  def shuffle
    arr = self
    shuf = []

    while arr.length > 0
      rand_index = rand(arr.length)
      curr_index = 0
      new_arr = []

      arr.each do |item|
        if curr_index == rand_index
          shuf.push(item)
        else
          new_arr.push(item)
        end
        curr_index += 1
      end

      arr = new_arr
    end

    shuf
  end

end


class Integer

    def factorial
      if self <= 1
        1
      else
        self * (self-1).factorial
      end
    end

    def to_old_roman

      numeral = ""

      numeral = numeral + "M" * (self / 1000)
      numeral = numeral + "D" * (self % 1000 / 500)
      numeral = numeral + "C" * (self % 500 / 100)
      numeral = numeral + "L" * (self % 100 / 50)
      numeral = numeral + "X" * (self % 50 / 10)
      numeral = numeral + "V" * (self % 10 / 5)
      numeral = numeral + "I" * (self % 5 / 1)

      return numeral

    end

end

puts [1,2,3,4,5].shuffle
puts 5.factorial
puts 73.to_old_roman
