class BeerSong
  def initialize(bottle_num)
    if bottle_num < 0
      @bottle_num = 0
    elsif bottle_num > 9999
      @bottle_num = 9999
    else
      @bottle_num = bottle_num
    end
  end

  public
  def print_song
    num = @bottle_num

    return "" if num == 0

    while num > 0
      puts "#{englishnum(num)} #{bottles(num)} of beer on the wall,"
      puts "#{englishnum(num)} #{bottles(num)} of beer,"
      puts "Take one down, pass it around,"
      puts "#{englishnum(num-1)} #{bottles(num-1)} of beer on the wall."
      num -= 1
    end
  end

  private
  def englishnum(num)
    return "Zero" if num == 0

    zillion = {
      "thousand" => 3,
      "hundred" => 2
    }

    ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    teenagers = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    numstring = ''
    write = num
    left = num

    zillion.each do | unit, power |
      write = num / 10**power
      num = num - write* (10**power)
      left = num

      if write >= 1
        numstring = numstring + englishnum(write) + " " + unit
        numstring << " " if left > 0
      end
    end

    if left >=1
      write = left/10

      if write >=2
        numstring = numstring + tens_place[write-1]
        left = left - write*10
        numstring << "-" if left > 0
      elsif write >=1
        numstring = numstring + teenagers[left-10]
        left=0
      end

      if left >=1
        numstring = numstring + ones_place[left-1]
      end
    end
    numstring.capitalize
  end

  def bottles(num)
    return "bottle" if num == 1
    return "bottles"
  end
end

beers = BeerSong.new 999
beers.print_song
