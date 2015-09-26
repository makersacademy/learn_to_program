def roman_to_integer numeral
  numeral_array = numeral.split("")
  numeral_array.each do |char|
  if char == "I" || char == "V" || char == "X" || char == "L" || char == "C" || char == "D" || char == "M"
  else return "This is not a Roman numeral"
  end
  end

counter = numeral.length
number = 0
while counter > 0 do

  if numeral[0] == 'I'
    if numeral [0,2] == 'IV'
      number = number + 4
      counter = counter -  2
      numeral = numeral[2, numeral.length - 2]
    elsif numeral [0,2] == 'IX'
      number = number + 9
      counter = counter -  2
      numeral = numeral[2, numeral.length - 2]
    else
      number = number + 1
      counter = counter -  1
      numeral = numeral[1, numeral.length - 1]
    end
  end

  if numeral[0] == 'V'
    number = number + 5
    counter = counter - 1
    numeral = numeral[1, numeral.length - 1]
  end

  if numeral[0] == 'X'
    if numeral [0,2] == 'XL'
      number = number + 40
      counter = counter -  2
      numeral = numeral[2, numeral.length - 2]
    elsif numeral [0,2] == 'XC'
      number = number + 90
      counter = counter -  2
      numeral = numeral[2, numeral.length - 2]
    else
      number = number + 10
      counter = counter -  1
      numeral = numeral[1, numeral.length - 1]
    end
  end

  if numeral[0] == 'L'
    number = number + 50
    counter = counter -  1
    numeral = numeral[1, numeral.length - 1]
  end

  if numeral[0] == 'C'
    if numeral [0,2] == 'CD'
      number = number + 400
      counter = counter -  2
      numeral = numeral[2, numeral.length - 2]
    elsif numeral [0,2] == 'CM'
      number = number + 900
      counter = counter -  2
      numeral = numeral[2, numeral.length - 2]
    else
      number = number + 100
      counter = counter -  1
      numeral = numeral[1, numeral.length - 1]
    end
  end

  if numeral[0] == 'D'
    number = number + 500
    counter = counter -  1
    numeral = numeral[1, numeral.length - 1]
  end

  if numeral[0] == 'M'
    number = number + 1000
    counter = counter -  1
    numeral = numeral[1, numeral.length - 1]
  end
end
  puts number

end
puts roman_to_integer 'CXIV'