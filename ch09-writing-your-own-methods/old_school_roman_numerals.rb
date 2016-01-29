def old_roman_numeral num
  number = ""
  (num/1000).times do number << "M" end
    num = num % 1000
  (num/500).times do number << "D" end
    num = num % 500
  (num/100).times do number << "C" end
    num = num % 100
  (num/50).times do number << "L" end
    num = num % 50
    (num/10).times do number << "X" end
      num = num % 10
      (num/5).times do number << "V" end
        num = num % 5
      num.times do number << "I" end
    number
end
