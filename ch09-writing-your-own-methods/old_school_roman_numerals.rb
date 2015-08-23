def old_roman_numeral num
  
  array = []
  array << num / 1000
  num = num % 1000
  array << num >= 500 ? 1 : 0
  num = num % 500
  array << num / 100
  num = num % 100
  array << num >= 50 ? 1 : 0
  num = num % 50
  array << num / 10
  num = num % 10
  array << num >= 5 ? 1 : 0
  num = num % 5
  array << num
  
  for i in 0..6
    array[i] = ["M","D","C","L","X","V","I"][i] * array[i]
  end
  
  array.join
  
end