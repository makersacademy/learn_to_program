class BeerSong

attr_accessor :number

  def initialize (number)
    @number = number
    if @number < 0
      @number = 0
    elsif @number > 99
      @number = 99
    end
    self.numbers_to_words
    self.print_song
  end


  def print_song
    while @number <= 99 && @number > 0
      if @number == 1
        bottle = "bottle"
      else
        bottle = "bottles"
      end
      puts "#{@no_of_bottles} #{bottle} of beer on the wall,".capitalize
      puts "#{@no_of_bottles} #{bottle} of beer,".capitalize
      puts "Take one down, pass it around,".capitalize
      @number -= 1
      if @number == 1
        bottle_less_one = "bottle"
      else
        bottle_less_one = "bottles"
      end
      numbers_to_words
      puts "#{@no_of_bottles} #{bottle_less_one} of beer on the wall.".capitalize #Whatever rachel said rachel has a bad memory BOTTLE CAPITALIZE
    end
  end

  def numbers_to_words

      set1 = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
        "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

      set2 = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

      tens = ((@number % 100) / 10)
      ones = @number % 10
      string = ""

      string += string + set1[tens*10+ones] if tens < 2
      string += set2[tens]
      string = string + "-" + set1[ones] if ones != 0 && tens != 1
      string = set1[ones] if ones != 0 && tens == 0
      string << 'zero' if @number == 0
      @no_of_bottles = string


  end




end
