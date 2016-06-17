def shuffle arr
  arr.sort_by{rand}
end

puts(shuffle(['pig', 'goat', 'joe', 'andrea']))
