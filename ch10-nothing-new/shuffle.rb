
def shuffle arr
  arr.sort{|x, y| rand<=>rand}
end

p s = shuffle([1,2,3,4,5,6,7,8,9])
p s.each.inject(:+)
p s.sort_by{rand}
p s.each.inject(:+)
