def roman_to_integer roman
  roman = roman.upcase

  hash = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000

  }

  num = 0
  left = 0

  roman.reverse.each_char do |hash_key|
    is_roman = hash[hash_key]
    return 'This is not a roman number' if is_roman == false

    if left > is_roman
      is_roman = is_roman * -1
    else
      left = is_roman
    end

    num = num + is_roman
  end

  num
end

puts(roman_to_integer('mcmxcix')) # => 1999
puts(roman_to_integer('CCCLXV')) # => 365
