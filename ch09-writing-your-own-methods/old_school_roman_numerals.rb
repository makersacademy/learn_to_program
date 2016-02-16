def old_roman_numeral num
  result = ""
  thousands = num/1000.to_i
  thousands.times do result << "M" end
  hundreds = (num-thousands*1000)/100.to_i
  if hundreds >= 5
    result << "D"
    (hundreds-5).times do result << "C" end
  else
    hundreds.times do result << "C" end
  end
  tens = (num - thousands*1000 - hundreds*100)/10.to_i
  if tens >= 5
    result << "L"
    (tens-5).times do result << "X" end
  else
    tens.times do result << "X" end
  end
  ones = num - thousands*1000 - hundreds*100 - tens*10
  if ones >= 5
    result << "V"
    (ones-5).times do result << "I" end
  else
    ones.times do result << "I" end
  end
  return result
end
