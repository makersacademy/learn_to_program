def roman_numeral num
  numeral = ""

  ms = num / 1000
  ds = (num % 1000) / 500
  cs = (num % 1000) / 100
  ls = (num % 100) / 50
  xs = (num % 100) / 10
  vs = (num % 10) / 5
  is = (num % 10)

  ms.times {numeral << "M"}

  if cs == 9
    numeral << "CM"
  elsif cs == 4
    numeral << "CD"
  else
    ds.times {numeral << "D"}
    (cs - (5*ds)).times {numeral << "C"}
  end

  if xs == 9
    numeral << "XC"
  elsif xs == 4
    numeral << "XL"
  else
    ls.times {numeral << "L"}
    (xs - (5*ls)).times {numeral << "X"}
  end

  if is == 9
    numeral << "IX"
  elsif is == 4
    numeral << "IV"
  else
    vs.times {numeral << "V"}
    (is - (5*vs)).times {numeral << "I"}
  end

  numeral
end