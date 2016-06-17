def music_shuffle filenames
      recursive_shuffle some_array, []
  end

  def recursive_shuffle unsorted_array, mixed_array
      y = -1
      until sorted_array.count == unsorted_array.count
          x = rand(unsorted_array.count)
          if x == y then
          else
          y = x
          mixed_array << unsorted_array[x]
          end
          end
     puts mixed_array
      end

  sort(['pear','apple', 'banana','orange','blackberry'])
end
