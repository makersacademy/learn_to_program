def english_number (number)
  return "No negative number please" if number < 0
  return "zero" if number == 0

  num_string = ""

  ones_place = [  'one', 'two', 'three', 'four', 
                  'five', 'six', 'seven', 'eight', 'nine']
  tens_place = [  'ten', 'twenty', 'thirty', 'forty',
                  'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens_place = [ 'eleven', 'twelve', 'thirteen', 'fourteen',
                  'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  zillions = [  ['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9],
                ['trillion', 12], ['quadrillion', 15], ['quintillion', 18],
                ['sextillion', 21], ['septillion', 24], ['octillion', 27],
                ['nonillion', 30], ['decillion', 33], ['undecillion', 36],
                ['duodecillion', 39], ['tredecillion', 42], ['quattuordecillion', 45],
                ['quindecillion', 48], ['sexdecillion', 51]]

  left_over = number

  while zillions.length > 0
    zillions_pair = zillions.pop
    zillions_name = zillions_pair[0]
    zillions_base = 10 ** zillions_pair[1]

    write = left_over/zillions_base
    left_over -= write*zillions_base

    if write > 0
      prefix = english_number(write)
      num_string += prefix + ' ' + zillions_name
    
      if left_over > 0
        num_string += ' '
      end

    end
  end

  #tens
  write = left_over/10
  left_over -= write*10

  if write > 0
    if write == 1 && left_over > 0
      num_string += teens_place[left_over - 1]
      left_over = 0
    else
      num_string += tens_place[write - 1]
    end

    if left_over > 0
      num_string += '-'
    end
  end

  #ones
  write = left_over
  left_over = 0

  if write > 0
    num_string += ones_place[write - 1]
  end

  num_string
end
