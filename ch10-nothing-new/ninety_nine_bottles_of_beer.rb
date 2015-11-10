# Below turns numbers into English, see beneath for song

def english_number number

return 'Please enter a number that is not negative' if number < 0
return 'zero' if number == 0

num_string = ''

ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
               'nine']

tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy',
                'eighty', 'ninety']

teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
              'seventeen', 'eighteen', 'nineteen']

left = number
right = left/1000
left -= right*1000

if right > 0
  thousands = english_number right
  num_string += thousands + ' thousand'
  if left > 0
      num_string += ' '
  end
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
num_string.capitalize

end

#The beer song

def bottle(n)
  if n == 1 then 'bottle' else 'bottles' end
end

def beer_song
  n = 9999
  while n > 0
      puts "#{english_number n} #{bottle n} of beer on the wall,"        ,
           "#{english_number n} #{bottle n} of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "#{english_number n - 1} #{bottle n-1} of beer on the wall."
    n -= 1
         end
  end
