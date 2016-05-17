class Array
  def shuffle
    self.length.times do
  self.insert(rand(self.length),self.delete_at(rand(self.length)))
  end
self
  end
end

class Integer
  def factorial
    sum = self
    i = self - 1
    while i >= 1
    sum = sum * i
    i -= 1
    end
    sum
  end


  def to_roman
thousand = self / 1000
hundreds = self % 1000 / 100
tens  = self % 100 / 10
units  = self % 10

  thousand_to_s = 'M' * thousand

  if hundreds == 9
    hundreds_to_s = 'CM'
  elsif hundreds == 4
    rhundreds_to_s = 'CD'
  else
    hundreds_to_s = 'D' * (self % 1000 / 500) + 'C' * (self % 500 / 100)
  end

  if tens == 9
    tens_to_s = 'XC'
  elsif tens == 4
    tens_to_s = 'XL'
  else
    tens_to_s = 'L' * (self % 100 / 50) + 'X' * (self % 50 / 10)
  end

  if units == 9
    units_to_s = 'IX'
  elsif units == 4
    units_to_s = 'IV'
  else
    units_to_s = 'V' * (self % 10 / 5) + 'I' * (self % 5 / 1)
  end

  thousand_to_s + hundreds_to_s + tens_to_s +units_to_s

  end
end

print ["PATIENCE", "YOU", "MUST", "HAVE", "my", "young", "padawan"].shuffle
