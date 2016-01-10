def roman_to_integer roman
  roman_letters = {'I': 1, 'V': 5, 'X':10, 'L':50, 'C':100, 'D':500, 'M':1000}
  roman.upcase!
  i,result = 0,0
  while i < roman.size
    num = roman[i]
    return 'Not valid!' if !roman_letters[num.intern]
    if i-1 >=0 && roman_letters[num.intern] > roman_letters[roman[i-1].intern]
      result+= roman_letters[roman[i-1].intern] *(-2)
    end
    result += roman_letters[num.intern]
    i+=1
  end
  result
end

