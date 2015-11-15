class Integer

  def factorial
    rec_factorial self, 1
  end
  def rec_factorial num, factorial
    if num < 1
      return factorial
    end
    rec_factorial num-1, factorial*num
  end

  def to_roman
    num = self

      if num >= 1000
        emmes = num / 1000
        remainder = num - emmes*1000
      else
        emmes = 0
        remainder = num
      end

      if remainder >= 500
        ds = remainder / 500
        remainder = remainder - ds*500
      else
        ds = 0
      end

      if remainder >= 100
        cs = remainder / 100
        remainder = remainder - cs*100
      else
        cs = 0
      end

      if remainder >= 50
        elles = remainder / 50
        remainder = remainder - elles*50
      else
        elles = 0
      end

      if remainder >= 10
        xes = remainder / 10
        remainder = remainder - xes*10
      else
        xes = 0
      end

      if remainder >= 5
        vs = remainder / 5
        remainder = remainder - vs*5
      else
        vs = 0
      end

      is = remainder / 1

    "M"*emmes+"D"*ds+"C"*cs+"L"*elles+"X"*xes+"V"*vs+"I"*is

  end


end

class Array

  def shuffle
    rec_shuffle self, []
  end
  def rec_shuffle ary, shuffled
    if ary == []
      return ary
    end
    i = rand(0...ary.length)
    shuffled.insert(0, ary[i])
    ary.delete_at(i)
    rec_shuffle ary, shuffled
    shuffled
  end

end







p a = [1,2,3,4,5,6,7,8]
p a.shuffle
puts
p 5
p 5.factorial
