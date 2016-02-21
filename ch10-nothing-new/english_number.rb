def english_number number
    if  number == 0
    return 'zero'
    end

  words = ''

  ones  = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens  = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

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
 position = number

    cray_nums.each do |value, key|
          key = 10**key
      until position < key
        remainder = position/key
        position = position%key
        if remainder > 0
          name = english_number remainder
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
