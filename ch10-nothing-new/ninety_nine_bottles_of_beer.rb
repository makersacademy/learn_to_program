class BeerSong

  def initialize(number_bottles)
    @number_bottles = number_bottles
  end

  # TWO OPTIONS TO TRY:
  # 1) spell out every time the singing song needs it
  # 2) spell out all number into an array, then call when singing song,

  # OPTION 1
  def english_number number
    if number < 0 # No negative numbers.
      return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
      return 'zero'
    end
    num_string = '' # This is the string we will return.
    ones_place = ['one',       'two',      'three',
                  'four',      'five',     'six',
                  'seven',     'eight',    'nine']
    tens_place = ['ten',       'twenty',   'thirty',
                  'forty',     'fifty',    'sixty',
                  'seventy',   'eighty',   'ninety']
    teenagers  = ['eleven',    'twelve',   'thirteen',
                  'fourteen',  'fifteen',  'sixteen',
                  'seventeen', 'eighteen', 'nineteen']

    # MILLIONS
    left = number
    write = left/1000000
    left = left - write*1000000

    if write > 0
      million = english_number write
      num_string = num_string + million + ' million'
      num_string = num_string + 's' if million != 'one'

      if left > 0
        num_string = num_string + ' '
      end
    end

    # THUSANDS
    write = left/1000
    left = left - write*1000

    if write > 0
      thusands = english_number write
      num_string = num_string + thusands + ' thusand'
      num_string = num_string + 's' if thusands != 'one'

      if left > 0
        num_string = num_string + ' '

      end
    end

    # HUNDREDS
    write = left/100
    left = left - write*100

    if write > 0
      hundreds = english_number write
      num_string = num_string + hundreds + ' hundred'

      if left > 0
        num_string = num_string + ' '
      end
    end

    # TENS
    write = left/10
    left = left - write*10

    if write > 0
      if ((write == 1) and (left > 0))
        num_string = num_string + teenagers[left-1]
      else
        num_string = num_string + tens_place[write-1]
      end

      if left > 0
        num_string = num_string + '-'
      end
    end

    # ONES
    write = left

    if write > 0
      num_string = num_string + ones_place[write-1]
    end

    num_string
  end


  def sing (number_bottles = @number_bottles)
    if number_bottles <= 1
      puts "One bottle of beer on the wall,"
      puts "One bottle of beer,"
      puts "Take one down, pass it around,"
      puts "Zero bottles of beer on the wall."
    end

    if number_bottles > 1
      puts "#{(english_number number_bottles).capitalize} bottles of beer on the wall,"
      puts "#{english_number number_bottles} bottles of beer,"
      puts "Take one down, pass it around,"
      puts "#{english_number (number_bottles-1)} bottles of beer on the wall."
      puts "-o-o-o-o-o-"

    sing number_bottles-1
    end

  end
end

newsong = BeerSong.new 99
newsong.sing
