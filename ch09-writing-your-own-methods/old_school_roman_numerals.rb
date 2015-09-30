def old_roman_numeral num
  numerals = {1000 => "M",
              500  => "D",
              100  => "C",
              50   => "L",
              10   => "X",
              5    => "V",
              1    => "I"}

  old_roman = ''

  numerals.each do |key,value|
    amount = num / key
    rest = num % key

    if amount > 0
      letters = value * amount
      old_roman = old_roman + letters
    end

    num = rest
  end

  old_roman
end

#Manual input

=begin
puts 'Please enter an integer number:'
number = gets.to_i
puts(old_roman_numeral(number))
=end