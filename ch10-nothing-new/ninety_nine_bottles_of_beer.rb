def beer_song
    beer = BeerSong.new(99)
    beer.print_song
end



class BeerSong
  def initialize(num)
    @num = num
    if @num > 99
      @num = 99
    elsif @num < 0
      @num = 0
    end
  end
  def eng_num(x)
    ones_array = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    teens_array = ['', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    tens_array = ['','ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    english_num = []
    ones = x % 10
    tens = (x - ones) / 10
    english_num << tens_array[tens] unless tens == 0 || tens == 1 && ones > 0
    english_num << teens_array[ones] if tens == 1 && ones != 0
    english_num << ones_array[ones] unless tens == 1 || tens >= 1 && ones == 0
    english_num.join("-").capitalize
  end
  def bottles(x)
      if x == 1
        "bottle"
      else
        "bottles"
      end
  end

  def print_song
    while @num > 0
        puts "#{eng_num(@num)} #{bottles(@num)} of beer on the wall,"
        puts "#{eng_num(@num)} #{bottles(@num)} of beer,"
        puts "Take one down, pass it around,"
        puts "#{eng_num(@num - 1)} #{bottles(@num - 1)} of beer on the wall."
        @num -= 1
      end
  end
end

beer_song