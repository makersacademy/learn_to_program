class Array
  def shuffle
    random_arr = []
    until self == []
      rand_value = rand(self.length)
      random_arr << self[rand_value]
      self.delete_at(rand_value)
    end
    return random_arr
  end
end

class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
  def to_roman
    thousand = "M" * (self / 1000)
    five_hundred = "D" * ((self % 1000) / 500)
    hundred = "C" * ((self % 500) / 100)
    fifty = "L" * ((self % 100) / 50)
    ten = "X" * (((self % 100) % 50) / 10)
    five = "V" * ((((self % 100) % 50) % 10) / 5)
    one = "I" * (((((self % 100) % 50) % 10) % 5) / 1)

    return thousand + five_hundred + hundred + fifty + ten + five + one
  end
end

puts ["Cat", "Mouse", "Dog", "Bear", "Goose"].shuffle

puts 3.factorial

puts 452.to_roman
