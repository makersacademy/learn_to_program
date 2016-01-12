def roman_numeral num
    str = ""

    thousands = num / 1000
    hundreds = (num / 100) % 10
    tens = (num / 10) % 10
    ones = num % 10

    str <<  "M" * thousands

    if hundreds <= 3
      str << "C" * hundreds
    elsif hundreds == 4
      str << "C" + "D"
    elsif hundreds >= 5 && hundreds < 9
      str << "D" + ("C" * (hundreds - 5))
    elsif hundreds == 9
      str << "C" + "M"
    end

    if tens <= 3
      str << "X" * tens
    elsif tens == 4
      str << "X" + "L"
    elsif tens >= 5 && tens < 9
      str << "L" + ("X" * (tens - 5))
    elsif tens == 9
      str << "X" + "C"
    end

    if ones <= 3
      str << ("I" * ones)
    elsif ones == 4
      str << "I" + "V"
    elsif ones >= 5 && ones < 9
      str << "V" + ("I" * (ones - 5))
    elsif ones == 9
      str << "I" + "X"
    end

    str
end
