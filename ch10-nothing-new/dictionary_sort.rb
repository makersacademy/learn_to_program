def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort word_list, sorted_array

  if word_list == []
    return sorted_array
  else

    smallest = "not found"
    challenger = 0
    opponent = 0
    wins = 0

    until smallest == "found"
      if word_list[challenger].downcase <= word_list[opponent].downcase
        opponent += 1
        wins += 1
      else
        challenger += 1
        opponent = 0
        wins = 0
      end

      if wins == word_list.length
        smallest = "found"
        sorted_array.push word_list[challenger]
        word_list.delete_at(challenger)
      end
    end
    recursive_sort(word_list, sorted_array)
  end
end

puts dictionary_sort(['ant','bee','fly','cat','Ant','duck','zebra', "Bird"])
