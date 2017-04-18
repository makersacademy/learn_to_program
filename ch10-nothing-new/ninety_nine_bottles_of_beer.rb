require_relative 'english_number.rb'

def n_nine_btls n
  if n == 1
    print_n_bottles(n)
  else
    print_n_bottles(n)  
    n_nine_btls(n-1)  
  end
end

def print_n_bottles n
  puts "#{english_number(n).capitalize} bottle#{'s' if n != 1 } of beer on the wall, #{english_number(n)} bottle#{"s" if n > 1} of beer"
  puts "Take one down and pass it around, #{english_number(n-1)} bottle#{'s' if (n-1) != 1} of beer on the wall."
end
