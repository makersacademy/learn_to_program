class BeerSong
  attr_accessor 'num_bottles'

  def initialize(num_bottles)
    num_bottles = 0 if num_bottles < 0
    num_bottles = 9999 if num_bottles > 9999
    self.num_bottles = num_bottles
  end

  def print_song

    num_bottles.downto 1 do |n|
    	puts  "#{num_bottles_str n} #{bottles n} of beer on the wall,"   ,
            "#{num_bottles_str n} #{bottles n} of beer,"               ,
    	      "Take one down, pass it around,"            ,
            "#{num_bottles_str n-1} #{bottles n-1} of beer on the wall."
    end

  end

  def bottles(n)
    n == 1 ? "bottle" : "bottles"
  end

  def num_bottles_str(number)

    return 'Please enter a number that isn\'t negative.' if number < 0
    return 'zero' if number == 0
    # No more special cases! No more returns!
    num_string = '' # This is the string we will return.
    ones_place = %w(one two three four five six seven eight nine)
    tens_place = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
    teenagers = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
    large_nos = [['hundred', 2],
                  ['thousand', 3],
                  ['million', 6]]


    left = number

    large_nos.reverse.each do |tested_object|
      test_name = tested_object[0]
      test_base = 10 ** tested_object[1]
      write = left/test_base # How many zillions left?
      left = left - write*test_base # Subtract off those zillions.

      if write > 0
        # Now here's the recursion:
        prefix = num_bottles_str write
        num_string = num_string + prefix + ' ' + test_name
        num_string << ' ' if left > 0
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
        # The "-1" is because tens_place[3] is
        # 'forty', not 'thirty'.
      end
      num_string << '-' if left >0
    end

    write = left # How many ones left to write out?
    left = 0 # Subtract off those ones.
    if write > 0
      num_string = num_string + ones_place[write-1]
      # The "-1" is because ones_place[3] is
      # 'four', not 'three'.
    end
    num_string.capitalize 
  end

end

bb = BeerSong.new(9999)
print bb.print_song
