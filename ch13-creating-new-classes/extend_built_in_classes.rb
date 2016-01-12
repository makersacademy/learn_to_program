class Integer
  def factorial

    if self < 0
      return "Please use a positive number"
    end

    if self <= 1
      return 1
    else
      return self * (self-1).factorial
    end

  end

  def to_roman

    thousands = self / 1000
    five_hundreds = (self % 1000) / 500
    hundreds = (self % 500) / 100
    fifties = (self % 100) / 50
    tens = (self % 50) / 10
    fives = (self % 10) / 5
    ones = (self % 5) / 1

    str = ""

    str <<  "M" * thousands
    str <<  "D" * five_hundreds
    str << "C" * hundreds
    str << "L" * fifties
    str << "X" * tens
    str << "V" * fives
    str << "I" * ones

    str

  end
end
