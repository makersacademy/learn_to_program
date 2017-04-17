# 1. Takes a number and identifys what it must be
#   a)

def converter num
  return 'Please provide a number between 0 & 100' if num < 0
  return 'Please provide a number between 0 & 100' if num > 100
  return 'One-Hundred' if num.to_s.length == 3

  tens = ''
  ones = ''

  tens_arr = ['Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety']
  ones_arr = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine']

  return 'Zero'     if num == 0
  return 'Eleven'   if num == 11
  return 'Twelve'   if num == 12
  return 'Thirteen' if num == 13
  return 'Fourteen' if num == 14
  return 'Fifteen'  if num == 15
  return 'Sixteen'  if num == 16
  return 'Seventeen'if num == 17
  return 'Eighteen' if num == 18
  return 'Nineteen' if num == 19

  tens = tens_arr[7] if (num / 90 == 1 && num % 90 <= 9)
  tens = tens_arr[6] if (num / 80 == 1 && num % 80 <= 9)
  tens = tens_arr[5] if (num / 70 == 1 && num % 70 <= 9)
  tens = tens_arr[4] if (num / 60 == 1 && num % 60 <= 9)
  tens = tens_arr[3] if (num / 50 == 1 && num % 50 <= 9)
  tens = tens_arr[2] if (num / 40 == 1 && num % 40 <= 9)
  tens = tens_arr[1] if (num / 30 == 1 && num % 30 <= 9)
  tens = tens_arr[0] if (num / 20 == 1 && num % 20 <= 9)

  ones = ones_arr[8] if (num % 10 == 9)
  ones = ones_arr[7] if (num % 10 == 8)
  ones = ones_arr[6] if (num % 10 == 7)
  ones = ones_arr[5] if (num % 10 == 6)
  ones = ones_arr[4] if (num % 10 == 5)
  ones = ones_arr[3] if (num % 10 == 4)
  ones = ones_arr[2] if (num % 10 == 3)
  ones = ones_arr[1] if (num % 10 == 2)
  ones = ones_arr[0] if (num % 10 == 1)

  if (num.to_s.length > 1 && num % 10 != 0)
    return tens + '-' + ones
  else
    return tens + ones
  end
end



puts converter -1
puts converter 101
puts converter 100
puts converter 99
puts converter 88
puts converter 77
puts converter 66
puts converter 55
puts converter 50
puts converter 44
puts converter 33
puts converter 22
puts converter 19
puts converter 15
puts converter 11
puts converter 8
puts converter 4
puts converter 0
