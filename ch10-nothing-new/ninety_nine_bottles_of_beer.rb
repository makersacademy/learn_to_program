
# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor :bottles

  def initialize(bottles)
    if bottles < 0
      @bottles = 0
    elsif bottles > 99
      @bottles = 99
    else
      @bottles = bottles
    end
  end

  def print_song
    nb_english = english_number(@bottles)
    count = @bottles
    count.times do
      puts "#{nb_english} bottle#{@bottles==1 ? "":"s"} of beer on the wall,\n" \
           "#{nb_english} bottle#{@bottles==1 ? "":"s"} of beer,\n" \
           "Take one down, pass it around,\n" \
           "#{english_number(@bottles-1)} bottle#{@bottles==2 ? "":"s"} of beer on the wall."
      @bottles -= 1
      nb_english = english_number(@bottles)
    end
  end

  def english_number number
    # your code here
    names = {
      100 => 'hundred', 1000 => 'thousand', 1000000 => 'million', 1000000000 => 'billion',
      1000000000000 => 'trillion',1000000000000000 => 'quadrillion',1000000000000000000 => 'quintillion',
      1000000000000000000000 => 'sextillion',1000000000000000000000000 => 'septillion',
      1000000000000000000000000000 => 'octillion', 1000000000000000000000000000000 =>'nonillion',
      1000000000000000000000000000000000 => 'decillion', 1000000000000000000000000000000000000 =>'undecillion',
      1000000000000000000000000000000000000000 =>'duodecillion', 1000000000000000000000000000000000000000000 => 'tredecillion',
      1000000000000000000000000000000000000000000000 => 'quattuordecillion', 1000000000000000000000000000000000000000000000000 => 'quindecillion',
      1000000000000000000000000000000000000000000000000000 => 'sexdecillion',
      1000000000000000000000000000000000000000000000000000000 =>' septendecillion',
      1000000000000000000000000000000000000000000000000000000000 => 'octodecillion',
      1000000000000000000000000000000000000000000000000000000000000 => 'novemdecillion',
      1000000000000000000000000000000000000000000000000000000000000000 => 'vigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000 => 'unvigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000000 => 'duovigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000000000 => 'trevigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000000000000 => 'quattuorvigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000000000000000 => 'quinvigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000000000000000000 => 'sexvigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000000000000000000000 => 'septenvigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 => 'octovigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 => 'novemvigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 => 'trigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 => 'untrigintillion',
      1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 => 'duotrigintillion',
      10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 => 'googol'
    }

    ones_place = ['one','two','three','four','five','six','seven','eight','nine']
    tens_place = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
    teenagers = ['eleven','twelve','thirteen','fourteen', 'fifteen', 'sixteen','seventeen', 'eighteen', 'nineteen']
    num_string = ''

  # input treatment, responds to non-number, float (only reads integer part) and negative numbers

    if number.is_a? Numeric
      if number.is_a? Float
        puts "I will only read the integer part"
        number = number.to_i
      end
    else
      return "please enter a number, go wild, I read very long ones!"
    end

  # add minus to the negative number, and convert it in positive
    if number < 0
      num_string += "minus "
      number = number.abs
    end
  # zero special case
    return "zero" if number == 0

    n_llions = 0
    idx_power = names.keys.index {|n| n > number }
    idx_power.nil? ? n_llions = 10**100 : n_llions = names.keys[idx_power]

    left = number
    while n_llions > 0

      write = left/n_llions
      #How many n_llions left?
      left = left - write*n_llions
      if write > 0
        eng_n_llions = english_number write
        num_string = num_string + eng_n_llions + " #{names[n_llions]}"
        if left > 0
          num_string += " "
        end
      end

      if n_llions == 10**100 || n_llions == 1000
        n_llions /= 10
      elsif n_llions > 1000
        n_llions /= 1000
      else
        n_llions = 0
      end
    end

    write = left/10
    left = left - write*10

    #How many tens left?
    #Subtract off those tens.
    if write > 0
      if ((write == 1) and (left > 0))
    # Since we can't write "tenty-two" instead of
    # "twelve", we have to make a special exception
    # for these.
        num_string = num_string + teenagers[left-1]
    # Since we took care of the digit in the
    # ones place already, we have nothing left to write.
        left = 0
      else
        num_string = num_string + tens_place[write-1]
      end
      if left > 0
    # So we don't write 'sixtyfour'...
        num_string = num_string + '-'
      end
    end
    write = left
    left = 0
    #  How many ones left to write out?
    #   Subtract off those ones.
    if write > 0
      num_string = num_string + ones_place[write-1]
    end
    num_string
  end

end

beers = BeerSong.new(3)
#puts(beers.english_number(3))
beers.print_song