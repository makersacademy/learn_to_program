def old_roman_numeral num
  rn = ""
    if num >= 1000
      rn = "M" * (num/1000).to_i
      num = num - ((num / 1000).to_i * 1000)
    end
    if num >= 500
      rn = rn + "D"
      num = num - 500
    end
    if num >= 100
      rn = rn + ("C" * (num/100).to_i)
      num = num - ((num / 100).to_i * 100)
    end
    if num >= 50
      rn = rn + "L"
      num = num - 50
    end
    if num >= 10
      rn = rn + ("X" * (num/10).to_i)
      num = num - ((num / 10).to_i * 10)
    end
    if num >= 5
      rn = rn + "V"
      num = num - 5
    end
    if num > 0
      rn = rn + ("I" * num)
    end
  return rn
end
