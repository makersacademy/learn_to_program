# Break given number to units, tens, hundreds and thousands
# e.g 12345 => [10000, 2000, 300, 40, 5]
def break_num(num)
  num_sarr = num.to_s.chars
  num_length = num.to_s.length
  num_broken_arr = []
  loop do
    dec = 10**(num_length - 1)
    num_broken_arr[num_length-1] =  num_sarr[-num_length].to_i * dec
    num_length -= 1
    break if num_length == 0
  end
  num_broken_arr = num_broken_arr.reverse
end

# Replace thousands with "M"s
# returns M's however many thousands there were (e.g. 200 M's for 200,000)
def replace_1000(num)
  zeros = 0
  num_sarr = num.to_s.chars
  num_sarr.select do |e| 
    if e == "0"
      zeros += 1
    end
  end
  n_1000s = (num_sarr[0].to_i) * 10**(zeros.to_i - 3)
  "M" * n_1000s
end

# Replace hundreds with "C"s, for 500 with "D", for 400 with "CD", for 900 with "CM"
def replace_100(num)
  hundreds = 0
  num_sarr = num.to_s.chars
  if num < 500 && num != 400
    hundreds = "C" * num_sarr[0].to_i
  elsif num == 400
    hundreds = "C" + "D"      
  elsif num == 500
    hundreds = "D"
  elsif num == 900
    hundreds = "C" + "M"      
  elsif num > 500 && num != 900    # for nums between 501 and 899 - inclusive
    hundreds = "D" + "C" * (num_sarr[0].to_i - 5) # e.g. for 700 : "D" + "C" * (7 - 5)
  end
  hundreds
end

# Replace tens with "X"s, for 50 with "L", for 40 with "XL", for 90 with "XC"
def replace_10(num)
  tens = 0
  num_sarr = num.to_s.chars
  if num < 50 && num != 40
    tens = "X" * num_sarr[0].to_i
  elsif num == 40
    tens = "X" + "L"      
  elsif num == 50
    tens = "L"
  elsif num == 90
    tens = "X" + "C"
  elsif num > 50 && num != 90   # for nums between 51 and 89 - inclusive
    tens = "L" + "X" * (num_sarr[0].to_i - 5) # e.g. for 70 : "L" + "X" * (7 - 5)
  end
  tens
end

# Replace units with "I"s, for 5 with "V", for 4 with "IV", for 9 with "IX"
def replace_under_10(num)
  under_tens = 0
  num_sarr = num.to_s.chars
  if num < 5 && num != 4
    under_tens = "I" * num_sarr[0].to_i
  elsif num == 4
    under_tens = "I" + "V"      
  elsif num == 5
    under_tens = "V"
  elsif num == 9
    under_tens = "I" + "X"    
  elsif num > 5 && num != 9   # for nums between 6 and 8 - inclusive
    under_tens = "V" + "I" * (num_sarr[0].to_i - 5) # e.g. for 7 : "V" + "I" * (7 - 5)
  end
  under_tens
end

# MAIN METHOD (POINT OF ENTRY)
def roman_numeral num
  broken_num = break_num(num)

  numeral = ""
  broken_num.each do |num|
    if num >= 1000
      numeral << replace_1000(num)
    end
    if num >= 100 && num < 1000
      numeral << replace_100(num)
    end
    if num >= 10 && num < 100
      numeral << replace_10(num)
    end
    if num < 10
      numeral << replace_under_10(num)    
    end
  end
  numeral
end

# LETS TEST THIS...
puts roman_numeral(1999)


