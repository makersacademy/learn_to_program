class Integer
  def factorial
    return nil if self < 0
    self <= 1 ? 1 : self * (self-1).factorial
  end

  def to_roman
    str = ""
    num = self
    hash = {1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V", 6 => "I"}
    # iterate over number divisions
    for i in [1000,500,100,50,10,5]
      str << hash.values_at(i).join * (num/i) if num/i > 0
      num -= num/i * i
    end
    str << "I" * num
  end
end

class Array
  def shuffle
    shuffled = []
    rndind = 0
    self.each.with_index{|x,i|
      rndind = rand(self.size - 1) until rndind != i
      shuffled.insert(rndind,x)
    }
    shuffled.compact
  end
end
