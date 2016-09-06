def english_number(number)
  if number < 0  # No negative numbers.
      return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
      return 'zero'
    end

num_string = ""

onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
tensPlace = ['ten', 'twenty', 'thirty','forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

remainder = number

current = remainder/1000000000000000000000000000000000000000000000000
remainder -= (current*1000000000000000000000000000000000000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' quindecillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000000000000000000000000000000000000
remainder -= (current*1000000000000000000000000000000000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' quattuordecillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000000000000000000000000000000000
remainder -= (current*1000000000000000000000000000000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' tredecillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000000000000000000000000000000
remainder -= (current*1000000000000000000000000000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' duodecillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000000000000000000000000000
remainder -= (current*1000000000000000000000000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' undecillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000000000000000000000000
remainder -= (current*1000000000000000000000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' decillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000000000000000000000
remainder -= (current*1000000000000000000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' nonillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000000000000000000
remainder -= (current*1000000000000000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' octillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000000000000000
remainder -= (current*1000000000000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' septillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000000000000
remainder -= (current*1000000000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' sextillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000000000
remainder -= (current*1000000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' quintillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000000
remainder -= (current*1000000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' quadrillion'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000000000000
remainder -= (current*1000000000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' trillion'
    if remainder > 0
      num_string += " "
    end
  end

  current = remainder/1000000000
  remainder -= (current*1000000000)

    if current  > 0
    millions = english_number current
    num_string = num_string + millions + ' billion'
      if remainder > 0
        num_string += " "
      end
    end

current = remainder/1000000
remainder -= (current*1000000)

  if current  > 0
  millions = english_number current
  num_string = num_string + millions + ' million'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000
remainder -= (current*1000)

  if current  > 0
  thousands = english_number current
  num_string = num_string + thousands + ' thousand'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/100 #how many hundreds we have to write out
remainder -= (current*100)

if current > 0
  hundreds  = english_number current
    num_string = num_string + hundreds + ' hundred'
    if remainder > 0
      num_string = num_string + " "
    end
end

current = remainder/10
remainder -= (current*10)

if current > 0
  if (current == 1) && (remainder > 0)
    num_string = num_string + teenagers[remainder-1]
    remainder = 0
  else
    num_string = num_string + tensPlace[current-1]
  end
  if remainder > 0
    num_string += "-"
  end
end

current = remainder
remainder = 0

if current > 0
  num_string = num_string + onesPlace[current-1]
end

num_string

end
