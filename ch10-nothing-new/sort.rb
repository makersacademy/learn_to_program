def sort my_array
  recursive_sort my_array, []
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
      if word_list[challenger] <= word_list[opponent]
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

puts sort(['ant','bee','fly','cat','ant','duck','zebra'])
