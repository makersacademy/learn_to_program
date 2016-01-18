def roman_numeral num
  last = false
  numerals = [[1000, "M"], [500, "D"], [100, "C"], [50, "L"],
    [10, "X"], [5, "V"], [1, "I"]]
  result = (0...numerals.length).map { |i|
    multi = num / numerals[i][0]
    num -= numerals[i][0] * multi
    if multi > 3
      if last == true && i.even?
        #this is a nine situation
        last = true
        '!' + numerals[i][1] + numerals[i-2][1]
      else
        # 4 situation
        last = true
        numerals[i][1] + numerals[i-1][1]
      end
    else
      multi > 0 ? (last = true) : (last = false)
      numerals[i][1] * multi
    end
  }.join('')
  result.count('!').times {
    result.slice!((result.index('!')-1))
    result.slice!(result.index('!'))
  }
  result
end
