def shuffle arr
  arr.sort_by{rand}
end

arr = [1,2,3,4,5,6]
puts arr.join(' ')
puts "after shuffle.."
puts (shuffle arr).join(' ')