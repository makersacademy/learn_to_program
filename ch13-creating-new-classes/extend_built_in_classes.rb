class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    elsif self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
end

class Array
  def shuffle
    arr = self
    shuf = []
    while arr.length > 0
      random_index = rand(arr.length)
      index = 0
      new_array = []
      arr.each do |item|
        if index == random_index
          shuf.push item
        else
          new_array.push item
        end
        index += 1
      end
      arr = new_array
    end
    shuf
  end
end

class Integer
  def to_roman

    num = self

    thousands = num / 1000 #det value in thousands place
    num -= thousands * 1000

    five_hundreds = num / 500 #det value in hundreds place
    num -= five_hundreds * 500

    hundreds = num / 100 #det value in hundreds place
    num -= hundreds * 100

    fiftys = num / 50 #det value in hundreds place
    num -= fiftys * 50

    tens = num / 10 #det value in tens place
    num -= tens * 10

    fives = num / 5 #det num of fives
    num -= fives * 5

    'M'*thousands + 'D'*five_hundreds + 'C'*hundreds + 'L'*fiftys + 'X'*tens + 'V'*fives + 'I'*num
  end
end


#puts 1.factorial
#puts 0.factorial
#puts -1.factorial
#puts 3.factorial
#puts 4.factorial
#puts 5.factorial
#puts 6.factorial
#puts 7.factorial
