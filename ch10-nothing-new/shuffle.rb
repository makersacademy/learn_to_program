def shuffle arr
  rec_shuffle arr, []
end

def rec_shuffle unshuffled, shuffled
  if unshuffled.length <= 0
      return shuffled 
  end
  s = []
  size = unshuffled.length
  rand = unshuffled[rand(size)]
  
  unshuffled.each do |f|
    if f == rand
      shuffled.push f
    else
      s.push f
    end
  end

  rec_shuffle(s, shuffled)

end

puts shuffle([0,1,2,3,4])
