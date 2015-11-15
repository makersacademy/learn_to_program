class Integer

  def factorial
    return "Must be a non-negative number" if self < 0
    (1..(self.zero? ? 1 : self)).inject(:*)
  end

  def to_roman
      romanstring = ""
      num         = self

      romanstring << "M"*(num/1000)                 # Number of thousands
      romanstring << "D"*(num % 1000 /500)          # Number of 500s
      romanstring << "C"*(num % 500/100)            # Number of 100s
      romanstring << "L"*(num % 100/50)             # Number of 50s
      romanstring << "X"*(num % 50/10)              # Number of 10s
      romanstring << "V"*(num % 10/5)               # Number of 5s
      romanstring << "I"*(num % 5)                  # Number of units

      romanstring
  end

end


class Array

  def shuffle
  shuffled = []

    while self.length > 0
      rand_index = rand(self.length)
      shuffled << self[rand_index]
      self.delete_at(rand_index)
    end

  shuffled
  end
end
