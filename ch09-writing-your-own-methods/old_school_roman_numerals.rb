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

# Replace hundreds with "C"s or for 500 with "D"
def replace_100(num)
  hundreds = 0
  num_sarr = num.to_s.chars
  if num < 500
    hundreds = "C" * num_sarr[0].to_i
  elsif num == 500
    hundreds = "D"
  else    # for nums between 501 and 999 - inclusive
    hundreds = "D" + "C" * (num_sarr[0].to_i - 5) # e.g. for 700 : "D" + "C" * (7 - 5)
  end
  hundreds
end

# Replace tens with "X"s or for 50 with "L"
def replace_10(num)
  tens = 0
  num_sarr = num.to_s.chars
  if num < 50
    tens = "X" * num_sarr[0].to_i
  elsif num == 50
    tens = "L"
  else    # for nums between 51 and 99 - inclusive
    tens = "L" + "X" * (num_sarr[0].to_i - 5) # e.g. for 70 : "L" + "X" * (7 - 5)
  end
  tens
end

# Replace units with "I"s or for 5 with "V"
def replace_under_10(num)
  under_tens = 0
  num_sarr = num.to_s.chars
  if num < 5
    under_tens = "I" * num_sarr[0].to_i
  elsif num == 5
    under_tens = "V"
  else    # for nums between 6 and 9 - inclusive
    under_tens = "V" + "I" * (num_sarr[0].to_i - 5) # e.g. for 7 : "V" + "I" * (7 - 5)
  end
  under_tens
end

# MAIN METHOD (POINT OF ENTRY)
def old_roman_numeral num
  raise 'Must enter a positive integer' if num <= 0

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
puts old_roman_numeral(1999)
