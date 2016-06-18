#99 bottles of beer on the wall... English Number version

def englishNumber number
  #if number < 0
  #  return 'Please enter a number that isn\'t negative.'
  #end
  if number == 0
    return 'zero'
  end

  numString = ''

  onesPlace = ['one', 'two','three', 'four','five','six','seven','eight','nine']
  tensPlace = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
  teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

  left = number
  write = left/1000
  left = left - write*1000

  if write > 0
        thousands  = englishNumber write
    numString = numString + thousands + ' thousand'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/100
  left  = left - write*100

  if write > 0
        hundreds  = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0

      numString = numString + ' '
    end
  end

  write = left/10
  left  = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left  = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

def beer_song (bottles)
bottles ||= 99
while bottles != 0
  if bottles == 1
	puts "#{englishNumber(bottles)} bottle of beer on the wall"
	puts "#{englishNumber(bottles)} bottle of beer.  Take one down, pass it around.."
	puts "No more bottles of beer on the wall!"
	bottles -= 1
  else
    puts "#{englishNumber(bottles)} bottles of beer on the wall"
	puts "#{englishNumber(bottles)} bottles of beer.  Take one down, pass it around.."
	bottles -= 1
	puts "#{englishNumber(bottles)} bottles of beer on the wall"
  end
end
end

#beer_song(9999)
