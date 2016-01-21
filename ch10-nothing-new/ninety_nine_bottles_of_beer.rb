class BeerSong

  def initialize(num)
    @num = num
  end
######################### english_number #########################
  def english_number number
      return 'Please enter a number that isn\'t negative.' if number < 0
      return 'zero' if number == 0

      num_string = ''
      ones_place = ['one',       'two',      'three',
                  'four',      'five',     'six',
                  'seven',     'eight',    'nine']
      tens_place = ['ten',       'twenty',   'thirty',
                  'forty',     'fifty',    'sixty',
                  'seventy',   'eighty',   'ninety']
      teenagers  = ['eleven',    'twelve',   'thirteen',
                  'fourteen',  'fifteen',  'sixteen',
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
      # "left" is how much of the number we still have left to write out.
      #  "write" is the part we are writing out right now.
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
          num_string = num_string + teenagers[left-1]
          left = 0
        else
          num_string = num_string + tens_place[write-1]
        end
        num_string = num_string + '-' if left > 0
      end

      write = left # How many ones left to write out?
      left = 0 # Subtract off those ones.
      num_string = num_string + ones_place[write-1] if write > 0

      num_string

  end
######################### english_number #########################
  def bottles(x)
      if x == 1
        "bottle"
      else
        "bottles"
      end
  end

  def print_song
    while @num > 0
        puts "#{english_number(@num)} #{bottles(@num)} of beer on the wall,"
        puts "#{english_number(@num)} #{bottles(@num)} of beer,"
        puts "Take one down, pass it around,"
        puts "#{english_number(@num - 1)} #{bottles(@num - 1)} of beer on the wall."
        @num -= 1
      end
  end

end

our_song = BeerSong.new(99)

our_song.print_song
