def num_words(bottles)
    return bottles = 0 if bottles < 0

  words = ''

  tens  = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen","eighteen","nineteen"]
  ones  = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

  cray_nums = {
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

 position = bottles

    cray_nums.each do |value, key|
          key = 10**key
      until position < key
        remainder = position/key
        position = position%key
        if remainder > 0
          name = num_words remainder
          words = words + name + ' ' + value
          if position > 0
          words = words + ' '
          end
        end
      end
    end

  remainder = position/10
  position  = position%10

  if remainder > 0
    if remainder == 1 && position > 0
      words = words + teens[position-1]
      position = 0
    else
      words = words + tens[remainder-1]
    end

    if position > 0
      words = words + '-'
    end
  end

  remainder = position
  position = 0

  if remainder > 0
  words = words + ones[remainder-1]
  end
  words
end

  def print_song bottles

    while bottles > 1
     puts "#{num_words(bottles).capitalize} bottles of beer on the wall,"
     puts "#{num_words(bottles).capitalize} bottles of beer,"
     puts "Take one down, pass it around,"
     puts "#{num_words(bottles-1).capitalize} #{bottles-1 == 1 ? "bottle" : "bottles"} of beer on the wall."
     bottles -= 1
    end

    if bottles == 1
     puts "One bottle of beer on the wall,"
     puts "One bottle of beer,"
     puts "Take one down, pass it around,"
     puts "Zero bottles of beer on the wall."
    end
  end

