def roman_to_integer roman
  puts roman
  digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
  total = 0
  prev = 0
  roman.reverse.each_char do |x|
    letter = x.downcase
    
    value = digit_vals[letter]
    puts "letter is : #{letter}. value is : #{value}"

    if !value
      puts 'This is not a valid roman numeral!'
      return
    end

    if value < prev
    	puts "value #{value} is smaller than prev #{prev}"
    	puts "so, make value #{value}*-1"
      value *= -1  # value is subtracted.  For example, IV  5(previous value is already added to total) - 1 (value)
    else
    	puts "value #{value} is the same or bigger than prev #{prev}"
    	puts "so, put value #{value} into prev #{prev} "
      prev = value
    end
    
    total += value
  end

  total
end

# puts(roman_to_integer('mcmxcix'))
# puts(roman_to_integer('CCCLXV'))


