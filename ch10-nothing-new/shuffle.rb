
def shuffle arr
  arr.sort{|x, y| rand<=>rand}
end
p shuffle([1, 2, 3, 4, 5])
