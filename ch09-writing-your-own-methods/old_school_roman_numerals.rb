def old_roman_numeral num
  roman_numbers = [1,5,10,50,100,500,1000]
  roman_letters = ['I','V','X','L','C','D','M']
  i = 6
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
