def dictionary_sort(arr)
  rec_sort(arr, [])
end


def rec_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end

  unsorted_2 = unsorted.map{|x| x.downcase}

  while unsorted_2.empty? != true

    word = unsorted_2.pop

    n = unsorted_2.length

    if n == 0
      sorted.push(word)
      break
    end

    if word < unsorted_2.min
      sorted.push(word)
    else
      unsorted_2.unshift(word)
    end

  end

  puts sorted


end

dictionary_sort(["Alex", "Wilson", "Rik", "Abs", "Janet", "Arnold", "Herbert", "Petunia", "Doris", "spencer", "felix", "rudolf", "mowgli"])
