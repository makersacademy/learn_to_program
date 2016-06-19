def old_roman_numeral num
  while true
    numerals = {
      1 => 'I',
      5 => 'V',
      10 => 'X',
      50 => 'L',
      100 => 'C',
      500 => 'D',
      1000 => 'M'
    }

    str = ""
    num = gets.chomp.to_i

    numerals.each do |number, numeral|
      if num == number
        return str + "#{numeral}"
      elsif num / 5 == even && num % 5 == 0 # does not end in a 5
        puts
      elsif num / 5 == odd && num % 5 == 0 # does end in a five
        puts
      elsif


    if num % 5 != 0 && num < 5
      puts i *num
    end

    if num % 5 == 0 && num < 10
      puts v
    end

    if num % 5 != 0 && num > 5 && num < 10
      puts v + (i * (num % 5))
    end

    if num % 10 == 0 && num < 50
      puts x
    end

    if num % 10 != 0 && num % 5 == 0 && num > 10 && num < 50
      puts x + v + (i * (num % 5))
    end

    if num % 10 != 0 && num % 5 != 0 && num > 10 && num < 50
      puts (x * (num / 10)) + (i * (num % 5))
    end
  break
  end
end

puts "Hi - please enter a number"
old_roman_numeral 0
