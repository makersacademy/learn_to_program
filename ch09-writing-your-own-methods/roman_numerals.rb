def roman_numeral num
  ten_less = %w[I II III IV V VI VII VIII IX]
  hundy_less = %w[X XX XXX XL L LX LXX LXXX XC]
  thou_less = %w[C CC CCC CD D DC DCC DCCC CM]
  three_thou = %w[M MM MMM]

  final = ""

  if num > 3000
    puts "Sorry, this number is too large"
  elsif num < 10
    final = "#{ten_less[num-1]}"
  elsif num < 100 && num > 9
    final = "#{hundy_less[num / 10 - 1]}" + "#{ten_less[num % 10 - 1]}"
  elsif num < 1000 && num > 99
    final = "#{thou_less[num / 100 - 1]}" + "#{hundy_less[(num % 100) / 10 - 1]}" + "#{ten_less[num % 10 - 1]}"
  elsif num > 999
    final = "#{three_thou[num / 1000 -1]}" + "#{thou_less[num / 100 - 1]}" + "#{hundy_less[(num % 100) / 10 - 1]}" + "#{ten_less[num % 10 - 1]}"
  end
end
