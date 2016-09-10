class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end

  def roman
    roman = ""
    roman = roman + "M" * (self / 1000)
    roman = roman + "D" * (self % 1000 / 500)
    roman = roman + "C" * (self % 500 / 100)
    roman = roman + "L" * (self % 100 / 50)
    roman = roman + "X" * (self % 50 / 10)
    roman = roman + "V" * (self % 10 / 5)
    roman = roman + "D" * (self % 5 / 1)
  end
end

class Array
  def shuffle
    arr = self
    shuffled = []
    while arr.length > 0
        rand_index = rand(arr.length)

        curr_index = 0
        new_array =[]

        arr.each do |item|
            if curr_index == rand_index
                shuffled.push item
                else
                new_array.push item
            end

            curr_index = curr_index + 1
        end

        arr = new_array
    end
    shuffled
end
