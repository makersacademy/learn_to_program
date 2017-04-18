
class Integer
  def factorial
    self <= 1 ? 1 : self * (self-1).factorial
  end
  def to_roman
    n = self
    nums = {
      1000 => "M",
       500 => "D",
       100 => "C",
        50 => "L",
        10 => "X",
          5 => "V",
          1 => "I",
    }

    roman = ""
    nums.each do |value, letter|
      roman << letter*(n / value)
      n = n % value
    end

    roman
  end
end



