
class BeerSong

  attr_accessor :beers

  def initialize(beers)
    if beers < 0
      beers = 0
    end
    self.beers = beers
  end

  def english_number n

    big_numbers = ["thousand", "million", "billion", "trillion", "quadrillion", "quintillion", "sextillion", "septillion", "octillion", "nonillion", "decillion", "undecillion", "duodecillion", "tredecillion", "quattuordecillion", "quindecillion"]
    power = (((n.to_s.length-1)/3)*3)
    big_index = (((n.to_s.length-1)/3)-1)

    if 1 <= n && n <= 19
    ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"][n]
    elsif n%10 == 0 && n < 100
      ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"][n/10]
    elsif n >= 100 && n <= 999
      if n % 100 == 0
      "#{english_number(n/100)} hundred"
      else
      "#{english_number(n/100)} hundred #{english_number(n%100)}"
      end
    elsif n > 999
      if n % 10**power == 0
      "#{english_number(n/10**power)} #{big_numbers[big_index]}"
      else
        "#{english_number(n/10**power)} #{big_numbers[big_index]} #{english_number(n%10**power)}"
      end
    else
       "#{english_number((n/10)*10)}-#{english_number(n%10)}"
    end
  end


  def plural(n)
    n == 1 ? "bottle" : "bottles"
  end

  def verse(n)
      puts "#{english_number(n)} #{plural(n)} of beer on the wall,".capitalize
      puts "#{english_number(n)} #{plural(n)} of beer,".capitalize
      puts "Take one down, pass it around,"
      puts "#{english_number(n-1)} #{plural(n-1)} of beer on the wall.".capitalize
  end

  def print_song
    beers.downto(1) { |amount| verse(amount)}
  end

end

beersong = BeerSong.new(99)
beersong.print_song
