class Array
  def shuffle
    self.sort_by{rand}
  end
end

class Integer
  def factorial
    raise "Must not use negative integer" if self < 0
    if self <= 1
      1
    else
       self * (self-1).factorial
    end
  end

  def to_roman

    raise "Must use positive integer" if self >= 0

    rom = "M" * (self / 1000)
    rom = rom + "D" * (self % 1000 / 500)
    rom = rom + "C" * (self % 500 /100)
    rom = rom + "L" * (self % 100 /50)
    rom = rom + "X" * (self % 50 /10)
    rom = rom + "I" * (self % 10)
    rom
  end
end
