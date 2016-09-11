def ninety_nine_bottles number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end

  if number == 0
    return 'Zero green bottles sitting on the wall, zero green bottles sitting on the wall, one fell of and then there were less.'
  end

  if number == 1
    return 'One green bottle sitting on the wall, one green bottles sitting on the wall, one fell of and then there were less.'
  end


  num_string = ''

  ones_place = ['one',      'two',      'three',
                'four',     'five',     'six',
                'seven',    'eight',     'nine',]

  tens_place = ['ten',      'twenty',     'thirty',
                'forty',    'fifty',      'sixty',
                'seventy',   'eighty',     'ninety']

  teenagers =  ['eleven',     'twelve',     'thirteen',
              'fourteen',     'fifteen',     'sixteen',
                'seventeen',   'eighteen',   'nineteen']



  while number >= 2
    left = number

    write = left/100
    left = left - write*100

    if write > 0
      hundreds = english_number write
      num_string = num_string + hundreds + ' hundred'
      if left > 0
        num_string = num_string + ' and '
      end
    end



      write = left/10
      left = left - write*10

      if write > 0
        if ((write == 1 ) and (left > 0))
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

      puts " #{num_string.capitalize} green bottles sitting on the wall, #{num_string} green bottles sitting on the wall. One fell off and then there were less"

      number -= 1

      num_string = ''
  end

end

ninety_nine_bottles 99