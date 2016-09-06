def shuffle arr
  arr.sort_by{rand}
end

puts(shuffle(['a','b','C','d','E','f','g','h','I']))
