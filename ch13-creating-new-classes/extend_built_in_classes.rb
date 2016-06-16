class Integer

  def factorial

    return "You can't take the factorial of a negative number!" if self < 0
    (1...self).inject(self) {|result, element| result * element }

end

  def to_roman

    numerals_hash = { "M"=>1000,
                      "D"=>500,
                      "C"=>100,
                      "L"=>50,
                      "X"=>10,
                      "V"=>5,
                      "I"=>1}

  numerals = ''
num = self
  numerals_hash.each do |l, i|
      (num / i).times {numerals << l}
      num %= i
    end

  numerals

  end

end
