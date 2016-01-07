def shuffle(arr)
length = arr.length
random_num = Random.new
new_array = []

  arr.each do |a|
    num = random_num.rand(1..2)
    if num == 1
      new_array.push(a)
    else
      new_array.unshift(a)
    end
    
  end  
  new_array
end

