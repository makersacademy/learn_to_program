class BeerSong
  attr_accessor :bottles

  def initialize (bottles)
    bottles = 0 if bottles < 0
    @bottles = bottles
  end
   if  number == 0
    return 'zero'
    end

  num_string = ''

  ones  = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens  = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  zillions = {
                "quindecillion"     => 48,
                "quattuordecillion" => 45,
                "tredecillion"      => 42,
                "duodecillion"      => 39,
                "undecillion"       => 36,
                "decillion"         => 33,
                "nonillion"         => 30,
                "octillion"         => 27,
                "septillion"        => 24,
                "sextillion"        => 21,
                "quintillion"       => 18,
                "quadrillion"       => 15,
                "trillion"          => 12,
                "billion"           => 9,
                "million"           => 6,
                "thousand"          => 3,
                "hundred"           => 2,
    }
 left = bottles

    zillions.each do |value, key|
          key = 10**key
      until left < key
        write = left/key
       left = left%key
        if write > 0
          name = english_number write
          num_string = num_string + name + ' ' + value
          if left > 0
          num_string = num_string + ' '
          end
        end
      end
    end

  write = left/10
  left  = left%10

  if write > 0
    if (write == 1) and (left > 0)
      num_string = num_string + teens[left-1]
      left = 0
    else
      num_string = num_string + tens[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

write = left
left = 0

  if write > 0
  num_string = num_string + ones[write-1]
  end
  num_string
end

  
    def print_song

    while bottles > 1
     puts "#{num_words(bottles).capitalize} bottles of beer on the wall,"
     puts "#{num_words(bottles).capitalize} bottles of beer,"
     puts "Take one down, pass it around,"
     puts "#{num_words(bottles-1).capitalize} #{bottles-1 == 1 ? "bottle" : "bottles"} of beer on the wall."
     @bottles -= 1
    end

    if bottles == 1
     puts "One bottle of beer on the wall,"
     puts "One bottle of beer,"
     puts "Take one down, pass it around,"
     puts "Zero bottles of beer on the wall."
    end
  end
end

BeerSong.new(9999).print_song
# your code here