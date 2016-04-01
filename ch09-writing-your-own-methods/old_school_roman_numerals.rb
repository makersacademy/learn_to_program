def old_roman_numeral num
  numeral = ""
  (num / 1000).times {numeral << "M"}
  (num % 1000 / 500).times {numeral << "D"}
  (num % 500 / 100).times {numeral << "C"}
  (num % 100 / 50).times {numeral << "L"}
  (num % 50 / 10).times {numeral << "X"}
  (num % 10 / 5).times {numeral << "V"}
  (num % 5 / 1).times {numeral << "I"}
  numeral
end
