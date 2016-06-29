#stumped on this one
#re-attempt a proper shuffle next week

def music_shuffle filenames
  recursive_music_shuffle filenames, [] #calls other method and passes in arr as the unshuffled_arr
                           #passes in [] as the shuffled_arr
end

def recursive_music_shuffle unshuffled_filenames, shuffled_filenames

  if unshuffled_filenames.empty?
    return shuffled_filenames   #stops recursion if all the strings have been transferred to shuffled_arr
  else

    shuffled_filenames << unshuffled_filenames.slice!(rand(0..unshuffled_filenames.length-1))#moves smallest string from unsorted to sorted
    recursive_music_shuffle unshuffled_filenames, shuffled_filenames   #recursion => repeat recursive_sort method
  end
end
