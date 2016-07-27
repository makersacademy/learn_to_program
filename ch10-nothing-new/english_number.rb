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

puts english_number( 0)
puts english_number( 7)
puts english_number( 10)
puts english_number( 18)
puts english_number( 20)
puts english_number( 23)
puts english_number( 46)
puts english_number( 35)
puts english_number(68)
puts english_number(109)
puts english_number(460)
puts english_number(301)
puts english_number(1005)
puts english_number(10156)
puts english_number(10960754)
puts english_number(3000000000000000000000)
puts english_number(99999999999999999999999999999999999999999999999999999999999)
