def shuffle arr
  arr.sort_by{rand}
end
puts shuffle(['this', 'is', 'a','shuffle','test'])
