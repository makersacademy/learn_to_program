class Integer

  def factorial
    return 1 if self == 1
    self * (self-1).factorial
  end

  def to_roman
  output = ""
  num = self
    if num / 1000 != 0
      output << "M" * (num / 1000)
      num -= (num/1000)*1000
    end
    if num / 500 != 0
      output << "D" * (num / 500)
      num -= (num/500)*500
    end
    if num / 100 != 0
      output << "C" * (num / 100)
      num -= (num/100)*100
    end
    if num / 50 != 0
      output << "L" * (num / 50)
      num -= (num/50)*50
    end
    if num / 10 != 0
      output << "X" * (num / 10)
      num -= (num/10)*10
    end
    if num / 5 != 0
      output << "V" * (num / 5)
      num -= (num/5)*5
    end
    if num / 1 != 0
      output << "I" * (num / 1)
      num -= (num/1)*1
    end
  output
  end

end


class Array

  def shuffle
    rec_shuf(self, [])
  end

  def rec_shuf(arr, out)
    return out << arr[0] if arr.length == 1
    pos = rand(arr.length)
    out << arr[pos]
    arr.delete_at(pos)
    rec_shuf(arr, out)
  end

end

#p 7.factorial
#nums = [1,2,3,4,5,6,7,8,9,0]
#p nums.shuffle
#p 10.factorial
#p 2999.to_roman
#p 1.to_roman
