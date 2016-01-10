class Beer
  def english_number number
    if number == 0
      return 'zero'
    end

    num_string = ''
    ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    zillions = [['hundred', 2], ['thousand', 3],  ['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15], ['quintillion', 18],
                ['sextillion', 21], ['septillion', 24], ['octillion', 27], ['nonillion', 30], ['decillion', 33], ['undecillion', 36],
                ['duodecillion', 39], ['tredecillion', 42], ['quattuordecillion', 45], ['quindecillion', 48], ['sexdecillion', 51],
                ['septendecillion', 54], ['octodecillion', 57], ['novemdecillion', 60], ['vigintillion', 63], ['googol', 100]]

    left = number

    while zillions.length > 0
      zil_pair = zillions.pop
      zil_name =  zil_pair[0]
      zil_base = 10 ** zil_pair[1]
      write = left/zil_base
      left = left - write*zil_base

      if write > 0
        prefix = english_number write
        num_string = num_string + prefix + ' ' + zil_name

        if left > 0
          num_string = num_string + ' '
        end
      end
    end


    write = left/10
    left = left - write*10

    if write > 0
      if ((write == 1) and (left > 0))
        num_string = num_string + teenagers[left-1]
        left = 0
      else
        num_string = num_string + tens_place[write-1]
      end

      if left > 0
      num_string = num_string + "-"
      end
    end

    write = left
    left = 0

    if write > 0
      num_string = num_string + ones_place[write-1]
    end

    num_string


  end


  def bottles_of_beer num_at_start
    num_now = num_at_start
    if num_at_start < 1
    while num_now > 2
      puts english_number(num_now).capitalize + 'bottles of beer on the wall, ' + english_number(num_now) + 'bottles of beer!'
      num_now = num_now - 1
      puts 'Take one down, pass it around, ' + english_number(num_now) + 'bottles of beer on the wall!'
    end

    puts "Two bottles of beer on the wall, two bottles of beer!"
    puts "Take one down and pass it around, one bottle of beer on the wall!"
    puts "One bottle of beer on the wall, one bottle of beer!"
    puts "Take one down and pass it around, no more bottles of beer on the wall!"
  end
end












#class BeerSong

#attr_accessor :number

#  def initialize (number)
#    @number = number
#    if @number < 0
#      @number = 0
#    elsif @number > 99
#      @number = 99
#    end
#    self.numbers_to_words
#    self.print_song
#  end


#  def print_song
#    while @number <= 99 && @number > 0
#      if @number == 1
#        bottle = "bottle"
#      else
#        bottle = "bottles"
#      end
#      puts "#{@no_of_bottles} #{bottle} of beer on the wall,".capitalize
#      puts "#{@no_of_bottles} #{bottle} of beer,".capitalize
#      puts "Take one down, pass it around,".capitalize
#      @number -= 1
#      if @number == 1
#        bottle_less_one = "bottle"
#      else
#        bottle_less_one = "bottles"
#      end
#      numbers_to_words
#      puts "#{@no_of_bottles} #{bottle_less_one} of beer on the wall.".capitalize #Whatever rachel said rachel has a bad memory BOTTLE CAPITALIZE
#    end
#  end

#  def numbers_to_words

#      set1 = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
#        "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

#      set2 = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

#      tens = ((@number % 100) / 10)
#      ones = @number % 10
#      string = ""

#      string += string + set1[tens*10+ones] if tens < 2
#      string += set2[tens]
#      string = string + "-" + set1[ones] if ones != 0 && tens != 1
#      string = set1[ones] if ones != 0 && tens == 0
#      string << 'zero' if @number == 0
#      @no_of_bottles = string


#  end




#end
