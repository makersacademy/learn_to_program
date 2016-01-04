def old_roman_numeral num
  numeral = ""

  if num >= 1000
    thousands = num / 1000
    num = num % 1000
    numeral << "M" * thousands
  end

  if num >= 100
    hundreds = num / 100
    num = num % 100
    if hundreds >= 5
      numeral << "D"
      hundreds -= 5
    end
    numeral << "C" * hundreds
  end

  if num >= 10
    tens = num / 10
    num = num % 10
    if tens >= 5
      numeral << "L"
      tens -= 5
    end
    numeral << "X" * tens
  end

  if num > 0
    if num >= 5
      numeral << "V"
      num -= 5
    end
    numeral << "I" * num
  end

  numeral
end
