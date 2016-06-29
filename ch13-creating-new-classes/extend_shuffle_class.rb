class Array
  def shuffle
    arr = self #remove parameter and make it self     # could do "recursive_shuffle self, []" instead
    recursive_shuffle arr, [] #calls other method and passes in arr as the unshuffled_arr
                             #passes in [] as the shuffled_arr
  end

  def recursive_shuffle unshuffled_arr, shuffled_arr

    if unshuffled_arr.empty?
      return shuffled_arr   #stops recursion if all the strings have been transferred to shuffled_arr
    else

      shuffled_arr << unshuffled_arr.slice!(rand(0..unshuffled_arr.length-1))#moves smallest string from unsorted to sorted
      recursive_shuffle unshuffled_arr, shuffled_arr   #recursion => repeat recursive_sort method
    end
  end
end

["hello", "it", "is", "nice"].shuffle
