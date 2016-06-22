def english_number number
  # your code here
  return 'I\'ll have none of that negativity here.' if number < 0
  return 'zero' if number == 0
  
  num_string = ''

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

  teens = ['eleven', 'twelve','thirteen', 'fourteen','fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  zillions = [['hundred', 2],['thousand', 3],['million', 6],['billion', 9],['trillion', 12],['quadrillion', 15],['quintillion', 18],['sixtillion', 21]]
  
  

  left = number 
  
  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base
    left = left - write*zil_base

    if write > 0 
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name
      if left > 0
        num_string = num_string + ' '
      end
    end
  end
  
  write = left/10
  left = left - write*10

  if write > 0 
    if write == 1 && left > 0
      num_string = num_string + teens[left - 1]
      left = 0
    else 
      num_string = num_string + tens_place[write - 1]
    end
    
    if left > 0
      num_string = num_string + '-'
    end 
  end
  
  write = left 
  left = 0

  if write > 0 
    num_string = num_string + ones_place[write - 1]
  end
  num_string
end

num = gets.chomp.to_i
puts english_number(num) 
