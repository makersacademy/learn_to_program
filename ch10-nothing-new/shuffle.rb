def shuffle array, new = []
  while array.length > 0
    rand = rand(0..(array.length-1))
    new << array[rand]
    array.delete(new.last)
  end
  new
end

puts(shuffle(['1','2','3','4','5','6','7','8','9','10']))

