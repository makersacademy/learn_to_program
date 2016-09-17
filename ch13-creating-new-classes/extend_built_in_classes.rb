class Integer
  def factorial
    if self <=1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    numberMs = "M" * (self / 1000)
    numberDs = "D" * ((self % 1000) / 500)
    numberCs = "C" * ((self % 500) / 100)
    numberLs = "L" * ((self % 100) / 50)
    numberXs = "X" * ((self % 50) / 10)
    numberVs = "V" * ((self % 10) / 5)
    numberIs = "I" * ((self % 5) / 1)

    return numberMs + numberDs + numberCs + numberLs + numberXs + numberVs + numberIs

  end
end
