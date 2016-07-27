def bottles_of_beer(num)
  current_bottles = num
  until current_bottles == 0 do
    puts "#{current_bottles} bottles of beer on the wall, #{current_bottles} bottles of beer.
Take one down and pass it around, #{current_bottles - 1} bottles of beer on the wall."
    current_bottles -= 1
  end
end

bottles_of_beer(99)
