def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

num_string = ''

ones_place = ['one' , 'two' , 'three' , 'four' , 'five' ,
              'six' , 'seven' , 'eight' , 'nine']
tens_place = ['ten' , 'twenty' , 'thirty' ,'forty' , 'fifty' , 'sixty' ,
              'seventy' , 'eighty' , 'ninety']
teenagers =  ['eleven' , 'twelve' , 'thirteen' , 'fourteen' , 'fifteen' ,
              'sixteen' , 'seventeen' , 'eighteen' , 'nineteen']
higher_numbers = [['hundred' , 2] , ['thousand' , 3] , ['million' , 6],
                  ['billion' , 9] , ['trillion' , 12] , ['quadrillion' , 15] ,
                  ['qintillion' , 18] , ['sextillion' , 21] ,
                  ['septillion', 24] ,['octillion', 27] , ['nonillion', 30] ,
                  ['decillion', 33] ,['undecillion', 36] ,
                  ['duodecillion', 39] , ['tredecillion', 42] ,
                  ['quattuordecillion', 45] , ['quindecillion', 48] ,
                  ['sexdecillion', 51] , ['septendecillion', 54] ,
                  ['octodecillion', 57] , ['novemdecillion', 60] ,
                  ['vigintillion', 63] , ['googol', 100]]

left = number

while higher_numbers.length > 0
  high_num_pair = higher_numbers.pop
  high_num_name = high_num_pair[0]
  high_num_base = 10 ** high_num_pair[1]
  write = left/high_num_base
  left = left - write*high_num_base

    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + ' ' + high_num_name

        if left > 0
          num_string = num_string + ' '
        end
      end
    end
    write = left/10
 left = left - write*10

 if write > 0
   if ((write == 1) and (left > 0))
     num_string = num_string + teenagers[left-1]
     left = 0
   else
     num_string = num_string + tens_place[write-1]
   end

   if left > 0
     num_string = num_string + '-'
   end
 end

 write = left
 left = 0
 if write > 0
   num_string = num_string + ones_place[write-1]
 end

 num_string
end
bottles = 10000
curr_bottles = bottles

while bottles != 0
puts english_number(bottles).capitalize + ' bottles of beer on the wall'
puts  english_number(bottles) + ' bottles of beer'
bottles = bottles - 1
puts 'take one down, pass it around, '
puts english_number(bottles) + ' bottles of beer on the wall!'

end
