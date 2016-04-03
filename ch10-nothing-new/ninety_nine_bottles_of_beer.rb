def bottlesong (bottles)

# special cases

if bottles < 0 # No negative numbers.
  return 'Please enter a number that isn\'t negative.'
end
if bottles == 0
  return 'zero'
end

#reset variables

  count = ""


#translate to

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

left = bottles

#translate higher than 99

while zillions.length > 0
  zil_pair = zillions.pop
  zil_name = zil_pair[0]
  zil_base = 10 ** zil_pair[1]
  write = left/zil_base
  left = left - write*zil_base


  if write > 0
    prefix = bottlesong write
    count = count + prefix + ' ' + zil_name

    if left > 0
      count = count + ' '
    end
  end
end


#translate tens
    write = left/10
    left = left - write*10

    if write > 0
      if write == 1 && left > 0
        count = count + teenagers[left-1]
        left = 0
      else
        count = count + tens_place[write-1]
      end

      if left > 0
        count = count + '-'
      end
    end


#translate ones

    write = left
    left = 0

    if write > 0
      count = count + ones_place[write-1]
    end

 count

end

def print_song(firstbottlecount)
  onethewall = firstbottlecount

while onethewall > 1

  entry1 = bottlesong(onethewall).capitalize
  entry2 = bottlesong(onethewall)
  entry3 = bottlesong(onethewall-1)

  puts "#{entry1} bottles of beer on the wall, #{entry2} bottles of beer!"
  puts "Take one down, pass it around, #{entry3} bottles of beer on the wall!"
  onethewall -= 1
end
  puts "One bottle of beer on the wall, one bottle of beer!"
  puts "Take one down, pass it around, no more bottles of beer on the wall!"


end
print_song(10)
