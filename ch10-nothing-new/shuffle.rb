#my original code, failed CI
def shuffle arr
  arr.sort{|x, y| rand<=>rand}
end
# def shuffle arr
#   arr.shuffle
# end
# def shuffle(arr)
#   random_shuffle arr, []
# end
#
# def random_shuffle(unshuffled_arr, shuffled_arr)
#   unshuffled_arr.count.downto(1) do |n|
#     shuffled_arr.push unshuffled_arr.delete_at(rand(n))
#   end
#   return shuffled_arr
# end
