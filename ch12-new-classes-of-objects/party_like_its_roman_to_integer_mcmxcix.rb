def roman_to_integer roman
  numbers = ['1','2','3','4','5','6','7','8','9']

i = 0
  while i < roman.length
    if numbers.include?roman[i]
    return puts '' + roman[i] + ' is not a roman number'
    else
      i += 1
    end
  end

puts 'All good'
end

,