def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative'
  end

  if number == 0
    return 'zero'
  end

  num_str = ''
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

  to_write = number
  
  # HUNDREDS, ETC.
  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    
    being_written = to_write / zil_base
    to_write -= being_written * zil_base

    if being_written > 0
      prefix = english_number(being_written)
      num_str += prefix + ' ' + zil_name

      if to_write > 0
        num_str += ' '
      end
    end
  end

  being_written = to_write / 100
  to_write -= being_written * 100

  if being_written > 0
    hundreds = english_number(being_written)
    num_str += hundreds + 'hundred'

    if
      num_str += ' '
    end
  end

  # TENS
  being_written = to_write / 10
  to_write -= being_written * 10

  if being_written > 0
    if ((being_written == 1) and (to_write > 0))
      num_str += teenagers[to_write - 1]
      to_write = 0
    else
      num_str += tens_place[being_written - 1]
    end

    if to_write > 0
      num_str += '-'
    end
  end

  # ONES
  being_written = to_write
  to_write = 0

  if being_written > 0
    num_str += ones_place[being_written - 1]
  end

  num_str
end

def bottle_s (n)
  return n == 1 ? 'bottle' : 'bottles'
end

beer = 9999

while beer > 0
  puts english_number(beer).capitalize + ' ' + bottle_s(beer) + ' of beer on the wall,'
  puts english_number(beer).capitalize + ' ' + bottle_s(beer) + ' of beer!'
  puts 'We take one down and pass it around —'
  beer -= 1

  if beer > 0  
    puts english_number(beer).capitalize + ' ' + bottle_s(beer) + ' of beer on the wall!'
    puts '--'
  elsif beer == 0
    puts 'No more bottles of beer on the wall!'
  end
end