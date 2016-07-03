class Integer

  def to_roman
    num = self
    numeral = {1000 => 0, 500 => 0, 100 => 0, 50 => 0, 10 => 0, 5 => 0, 1 => 0}

    numeral.each do |k, v|
      numeral[k] = num/k if num >= k
      num = num%k        if num >= k
    end

       'M'*numeral[1000] + 'D'*numeral[500] + 'C'*numeral[100]  +
       'L'*numeral[50] + 'X'*numeral[10] +'V'*numeral[5] + 'I'*numeral[1]
  end

  def factorial
    self <= 1 ? 1 : self * (self-1).factorial
  end
end

class Array

  def shuffle
    arr = self
    shuffled = []
    length = arr.length

    until arr.empty?
      length = arr.length
      random_index = rand(length)
      shuffled << arr.slice!(random_index)
    end
    shuffled
  end
end
