def english_number number

return 'Please enter a number that is not negative' if number < 0
return 'zero' if number == 0

num_string = ''

thousands_place = ['thousand', 'million', 'billion', 'trillion', 'quadrillion',
'quintillion', 'sextillion', 'septillion', 'octillion', 'nonillion', 'decillion',
'undecillion', 'duodecillion', 'tredecillion', 'quattuordecillion', 'quindecillion']

ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
               'nine']

tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy',
                'eighty', 'ninety']

teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
              'seventeen', 'eighteen', 'nineteen']

              left = number

              power_thousands = Math.log(number, 1000).to_i

              while power_thousands > 0

              right = left/(1000**power_thousands)
              left -= right*(1000**power_thousands)

              if right > 0
                num_illion  = english_number right
                num_string += num_illion + ' ' + thousands_place[power_thousands-1]
                if left > 0
                    num_string += ' '
                end
              end

              power_thousands -= 1
            end


right = left/100
left -= right*100

if right > 0
  hundreds = english_number right
  num_string += hundreds + ' hundred'
  if left > 0
    num_string += ' '
  end
end

right = left/10
left -= right*10

if right > 0
  if right == 1 && left > 0
    num_string += teenagers[left-1]
    left = 0
  else
    num_string += tens_place[right-1]
  end
  if left > 0
    num_string += '-'
  end
end

right = left
left = 0

if right > 0
  num_string += ones_place[right-1]
end
num_string

end
