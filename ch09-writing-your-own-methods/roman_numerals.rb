def roman_numeral num
  rn = ""
    if num >= 1000
      rn = "M" * (num/1000).to_i
      num = num - ((num / 1000).to_i * 1000)
    end
    if num >= 900
      rn = rn + "CM"
      num -= 900
    end
    if num >= 500
      rn = rn + "D"
      num -= 500
    end
    if num >= 400
      rn = rn + "CD"
      num -= 400
    end
    if num >= 100
      rn = rn + ("C" * (num/100).to_i)
      num -= ((num / 100).to_i * 100)
    end
    if num >= 90
      rn = rn + "XC"
      num -= 90
    end
    if num >= 50
      rn = rn + "L"
      num -= 50
    end
    if num >= 40
      rn = rn + "XL"
      num -= 40
    end
    if num >= 10
      rn = rn + ("X" * (num/10).to_i)
      num -= ((num / 10).to_i * 10)
    end
    if num >= 9
      rn = rn + "IX"
      num -= 9
    end
    if num >= 5
      rn = rn + "V"
      num -= 5
    end
    if num == 4
      rn = rn + "IV"
      num -= 4
    end
    if num > 0
      rn = rn + ("I" * num)
    end
  return rn
end
