def english_number number
  #no negative numbers
  if number < 0
    return "Please enter number that\'s not negative"
  end
  if number == 0
    return "Zero"
  end
  num_string = ""
  ones_place = [
    'one','two','three','four','five','six','seven',
    'eight','nine']
  tens_place = [
    'ten','twenty','thirty','forty','fifty',
    'sixty','seventy','eighty','ninety']
  teenagers = [
    'eleven','twelve','thirteen','fourteen','fifteen',
    'sixteen','seventeen','eighteen','nineteen']
  zillions = [['hundred',2],['thousand',3],['million',4],['billion',5],['trillion',12]]

  #left is how much of number left to write
  #write is whats being written right now

  left = number
  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base #how many zillions left
    left = left - write * zil_base #minus the zillions
    if write > 0
      #there is the recursion

      prefix = english_number write
      num_string = num_string + prefix + '' + zil_name
      if left > 0
        #so we don't write two billionfifty-one
        num_string - num_string + ' '
      end
    end
  end
  write = left/10 #how many tens left
  left = left = write * 10 # minus those tens
  if write > 0
    if((write == 1) and (left > 0))
      # cant write tenty two so exception for twelve etc
      num_string = num_string + teenagers[left - 1]
      #-1 is because teenagers[3] is fourteen not thirteen
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left #how many ones left write
  left = 0 #minus those ones
  if write > 0
    num_string =num_string + ones_place[write-1]
  end
  num_string
end
