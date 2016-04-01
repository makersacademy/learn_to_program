def english_number(number)
=begin
    if num.to_s.length > 6
        size = num.to_s.length
        string = num.to_s
        big_bit = string.split(string[-6])
        big_bit.delete_at(1)
        big_bit = big_bit[0]
        big_bit = big_bit.split("")
        big_bit.map! { |x| x.to_i }
   
        big_nums = ["million","billion", "trillion", "quadrillion"] 
        
        
        

 
    
    if num < 0 
        return "Please return a number that isn't negative."
    end
    if num == 0 then return "zero" end
        
    num_string = ""
    
    ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    
    teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  
    
    
    # left is how much of the number is still to write out
    # write is the part of the number we are writing out right now
    
    left = num 
    write = num/1000                    # sets write to no. thousands to write out
    
    left = left - write*1000            #subtracts no of thousands that are being written from no 'left' to write out 
    
    if write > 0
        num_string = num_string + english_number(write) + " thousand"
    end
    
    if left > 0
        num_string = num_string + " "
    end
    
    write = left/100
	left = left - write*100
	
	if write > 0
		num_string = num_string + ones[write-1] + ' hundred'
		
		if left > 0
			num_string = num_string + ' '
		end
	end
        
    write = left / 10           # sets write to no. of tens in number thats 'left'
    left = left - write*10           # sets left to number left to write out
    
    if write > 0
        
        if write == 1 && left > 0 
            num_string = num_string + teens[left-1]
            left = 0
        else 
            num_string = num_string + tens[write-1]
        end
        
        if left > 0
            num_string = num_string + "-"       #adds a dash for the final bit of the no. left to write
        end
    end
    
    write = left                        # only ones left to write out now
    
    left = 0                             #nothing left to write out after write is written 
    
    if write > 0                                    # zero already dealt with at the start of the method
        num_string = num_string + ones[write-1]
    end
    
    num_string.lstrip # numbers all written out now
    
end

=end
if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  num_string = '' # This is the string we will return.

  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']

  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']


  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']

  zillions = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
              ['quadrillion', 15],
              ['quintillion', 18],
              ['sextillion', 21],
              ['septillion', 24],
              ['octillion', 27],
              ['nonillion', 30],
              ['decillion', 33],
              ['undecillion', 36],
              ['duodecillion', 39],
              ['tredecillion', 42],
              ['quattuordecillion', 45],
              ['quindecillion', 48],
              ['sexdecillion', 51],
              ['septendecillion', 54],
              ['octodecillion', 57],
              ['novemdecillion', 60],
              ['vigintillion', 63],
              ['googol', 100]]

  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
  left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base # How many zillions left?
    left = left - write*zil_base # Subtract off those zillions.

    if write > 0
      # Now here's the recursion:
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        # So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '
      end
    end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end

  # Now we just return "num_string"...
  num_string
end
