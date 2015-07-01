def bottle_singer num
  if num > 0
    puts "There are #{num} green bottles, sitting on the wall"
    puts "#{num} green bottles, sitting on the wall"
    puts "And if just one bottle should accidentally fall, there would be #{num-1} green bottles sitting on the wall..."
    puts""
    num-=1
    bottle_singer(num)
  else
    puts"Now there are no green bottles, sitting on the wall..."
  end
end

#Test case:
# bottle_singer 15