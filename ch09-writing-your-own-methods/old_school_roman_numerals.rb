def old_roman_numeral num
  answer = ""
  if num / 1000 > 0
    answer += "M" * (num / 1000)
    num = num - num / 1000 * 1000
  end

  if num / 500 > 0
    answer += "D" * (num / 500)
    num = num - num / 500 * 500
  end

  if num / 100 > 0
    answer += "C" * (num / 100)
    num = num - num / 100 * 100
  end

  if num / 50 > 0
    answer += "L" * (num / 50)
    num = num - num / 50 * 50
  end

  if num / 10 > 0
    answer += "X" * (num / 10)
    num = num - num / 10 * 10
  end

  if num / 5 > 0
    answer += "V" * (num / 5)
    num = num - num / 5 * 5
  end

  answer += "I" * num
  answer
end
