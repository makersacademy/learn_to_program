class Array
  def shuffle
    ary = self
    ary.sort_by{rand(ary.length)}
  end
end


class Integer
  def factorial
    num = self
    if num <= 1
      1
    else
      num * (num-1).factorial
    end
  end

  def to_roman
    num = self
    numeral_ary = []
    numeral_ary << 'M' * (num / 1000)
    numeral_ary << 'D' * (num % 1000 / 500)
    numeral_ary << 'C' * (num % 500 / 100)
    numeral_ary << 'L' * (num % 100 / 50)
    numeral_ary << 'X' * (num % 50 / 10)
    numeral_ary << 'V' * (num % 10 / 5)
    numeral_ary << 'I' * (num % 5 / 1)
    numeral_ary.join
  end
end

# ary = ["booby", "pigeon", "pheasant", "seagull", "sparrow", "falcon"]
# print ary.shuffle
# 30.factorial
# 1999.to_roman
