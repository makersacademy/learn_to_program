def roman_numeral num
  result = ""

  numerals = [[1, "I"], #0
             [4, "IV"], #1
             [5, "V"], #2
             [9, "IX"], #3
             [10, "X"], #4
             [40, "XL"], #5
             [50, "L"], #6
             [90, "XC"], #7
             [100, "C"], #8
             [400, "CD"], #9
             [500, "D"], #10
             [900, "CM"], #11
             [1000, "M"], #12
             [2000, "MM"],
             [3000, "MMM"],
             [4000, "MMMM"]
             [5000, "MMMMM"]
             [6000, "MMMMMM"]
             [7000, "MMMMMMM"]
             [8000, "MMMMMMMM"]]

  while num >= 1
    i = 0

    until num < numerals[i][0]
      i += 1
    end
      i -= 1

    result = result + numerals[i][1]
    num = num - numerals[i][0]

  end
  puts result
  result
end
