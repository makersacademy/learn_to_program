def shuffle arr
  shuffled = []
  rndind = 0
  arr.each.with_index{|x,i|
    rndind = rand(arr.size - 1) until rndind != i
    shuffled.insert(rndind,x)
  }
  shuffled.compact
end

#print shuffle(["Hello","not","same","place"])
