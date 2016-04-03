def roman_numeral num
  answer = ""

  if num / 1000 > 0
    answer += "M" * (num / 1000)
    num -= num / 1000 * 1000
  end

  if num / 900 > 0
    answer += "CM"
    num -= 900
  end

  if num / 500 > 0
    answer += "D"
    num -= 500
  end

  if num / 400 > 0
    answer += "CD"
    num -= 400
  end

  if num / 100 > 0
    answer += "C" * (num / 100)
    num -= num / 100 * 100
  end

  if num / 90 > 0
    answer += "XC"
    num -= 90
  end

  if num / 50 > 0
    answer += "L"
    num -= 50
  end

  if num / 40 > 0
    answer += "XL"
    num -= 40
  end

  if num / 10 > 0
    answer += "X" * (num / 10)
    num -= num / 10 * 10
  end

  if num / 9 > 0
    answer += "IX"
    num -= 9
  end

  if num / 5 > 0
    answer += "V"
    num -=5
  end

  if num / 4 > 0
    answer += "IV"
    num -= 4
  end

  answer += "I" * num
  answer
end
