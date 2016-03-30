def roman_numeral num
  roman_num = ""
  number = "O" * (4-num.to_s.length) + num.to_s
  graph = [["M", "MMMM", "MMMMM", "MMMMMMMMM"], ["C", "CD", "D", "CM"], ["X", "XL", "L", "XL"], ["I", "IV", "V", "IX"]]

  4.times do |n|
    if number[n] == "4"
      roman_num << graph[n][1]
    elsif number[n] == "9"
      roman_num << graph[n][3]
    elsif number[n].to_i >= 5
      roman_num << graph[n][2] + graph[n][0] * (number[n].to_i % 5)
    else
      roman_num << graph[n][0] * number[n].to_i
    end
  end
  roman_num
end
