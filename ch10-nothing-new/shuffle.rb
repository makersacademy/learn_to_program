def shuffle(arr)
  
  shuffled=[]

  arr.each do |x|
    rand(100) <= 50 ? shuffled.push(x) : shuffled.unshift(x) 
    
end
    return shuffled
end


