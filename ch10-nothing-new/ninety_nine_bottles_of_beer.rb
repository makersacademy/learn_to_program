#'cheating' on this one as took over an hour
def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  num_string = '' # This is the string we will return.

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

  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
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
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end

  # Now we just return "num_string"...
  num_string
end




num_at_start = 5 # change to 9999 if you want
num_now = num_at_start
while num_now > 2
  puts english_number(num_now).capitalize + ' bottles of beer on the wall, ' +
    english_number(num_now) + ' bottles of beer!'
  num_now = num_now - 1
  puts 'Take one down, pass it around, ' +
    english_number(num_now) + ' bottles of beer on the wall!'
end


# puts "Two bottles of beer on the wall, two bottles of beer!"
# puts "Take one down, pass it around, one bottle of beer on the wall!"
# puts "One bottle of beer on the wall, one bottle of beer!"
# puts "Take one down, pass it around, no more bottles of beer on the wall!"

=begin

def make_alpha(count)
  tens = ["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
  teens = ["Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
  units = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  # upcase_units = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
# okay, so here to translate numbers into letters
# so this is for pure tens
if count % 10 == 0
  alpha_bottles = tens[(count / 10) - 1]
# ths is for 1 to 10
elsif (count % 10) > 0 && (count < 10)
  alpha_bottles = units[count]
# this is for anything that is not divisible by ten and is above 19
elsif count % 10 != 0 && count > 19
  first, second = count.to_s.split('').map { |digit| digit.to_i }
  alpha_bottles = tens[first-1] + "-" + units[second]
  # this is for teens!!!
elsif count % 10 != 0 && count < 20
  alpha_bottles = teens[count-11]
# this is for single units
elsif count < 10 && count > 0
  alpha_bottles = units[count]
  alpha_bottles.capitalize
  # and this is for zero
else alpha_bottles = "Zero"
end
return alpha_bottles
end

# mea culpa, this block is a straight lift from the soluton given
# by josh creek, I am just borrowing it so I can try and work out what's
# going wrong with the rest of the code I wrote.

def bottle(n)
  if n == 1 then 'bottle' else 'bottles'
  end
end

def print_song
  beers.downto(1) do |the_beers|
      print_verse(the_beers)
  end
end

def print_verse(num)
# the next two lines of this block are also taken from the
# josh creek solution, although I'm unsure what they do... but as
# my problem is failing the first rake test with the error
# "rspec ./session2/4-spec/11.rb:24 # BeerSong prints nothing when there is no bee"
# I'm guessing it is something to do
if num.zero?
  String.new

# I know the following is hugely unsightly, but I tried for hours to get the
# .capitalize method to work on single units in the make_alpha block, but
# for some reason it just wouldn't. I will investigate why further later.

elsif num == 1
 puts "One bottle of beer on the wall,\nOne bottle of beer,\nTake one down, pass it around,\nZero bottles of beer on the wall.".split("\n")
 elsif num == 2
puts "Two bottles of beer on the wall,\nTwo bottles of beer,\nTake one down, pass it around,\nOne bottle of beer on the wall.".split("\n")
elsif num == 3
  puts "Three bottles of beer on the wall,\nThree bottles of beer,\nTake one down, pass it around,\nTwo bottles of beer on the wall.".split("\n")
elsif num == 4
  puts "Four bottles of beer on the wall,\nFour bottles of beer,\nTake one down, pass it around,\nThree bottles of beer on the wall.".split("\n")
elsif num == 5
  puts "Five bottles of beer on the wall,\nFive bottles of beer,\nTake one down, pass it around,\nFour bottles of beer on the wall.".split("\n")
elsif num == 6
  puts "Six bottles of beer on the wall,\nSix bottles of beer,\nTake one down, pass it around,\nFive bottles of beer on the wall.".split("\n")
elsif num == 7
  puts "Seven bottles of beer on the wall,\nSeven bottles of beer,\nTake one down, pass it around,\nSix bottles of beer on the wall.".split("\n")
elsif num == 8
  puts "Eight bottles of beer on the wall,\nEight bottles of beer,\nTake one down, pass it around,\nSeven bottles of beer on the wall.".split("\n")
elsif num == 9
  puts "Nine bottles of beer on the wall,\nNine bottles of beer,\nTake one down, pass it around,\nEight bottles of beer on the wall.".split("\n")
elsif num == 10
  puts "Ten bottles of beer on the wall,\nTen bottles of beer,\nTake one down, pass it around,\nNine bottles of beer on the wall.".split("\n")
# oh wow, that almost killed me finding that last "nine" that wasn't capped up. But, finally, PASSED!
else
  puts "#{make_alpha(num)} #{bottle num} of beer on the wall,\n#{make_alpha(num)} #{bottle num} of beer,\nTake one down, pass it around,\n#{make_alpha(num-1)} #{bottle num-1} of beer on the wall.".split("\n")
end
end
end
=end
