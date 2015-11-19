class Integer
  
  def factorial num
      num <= 1 ? 1 : num * factorial(num-1)
  end
  
def to_roman num
  result = ""
  result << "M" * (num / 1000) 
  num = num - (num / 1000) * 1000
  result << "D" * (num / 500)
  num = num - (num / 500) * 500
  result << "C" * (num / 100)
  num = num - (num / 100) * 100
  result << "L" * (num / 50) 
  num = num - (num / 50) * 50
  result << "X" * (num / 10)
  num = num - (num / 10) * 10
  result << "V" * (num / 5)
  num = num - (num / 5) * 5
  result << "I" * (num / 1) 
  num = num - (num / 1) * 1
 return result
end
  
end