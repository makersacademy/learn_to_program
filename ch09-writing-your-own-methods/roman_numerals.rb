def roman_numeral num
  roman_numbers = [1,4,5,9,10,40,50,90,100,400,500,900,1000]
  roman_letters = ['I','IV','V','IX','X','XL','L','XC','C','CD','D','CM','M']
  i = 12
  result=''
  while num != 0
    if num >= roman_numbers[i]
      result+=roman_letters[i]
      num -= roman_numbers[i]
    else
      i-=1
    end
  end
  result
end