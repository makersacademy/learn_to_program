def ninety_nine_bottles(n)
  while n > 1
    puts "#{n} bottles of beer on the wall,"
    puts "#{n} bottles of beer,"
    puts "Take one down, pass it around,"
    puts "#{n - 1} bottles of beer on the wall."
    puts ""
    n -= 1
  end
    puts "#{n} bottle of beer on the wall,"
    puts "#{n} bottle of beer,"
    puts "Take one down, pass it around,"
    puts "#{n - 1} bottles of beer on the wall."
    puts ""
end

ninety_nine_bottles(99)