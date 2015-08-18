def shuffle(arr)
  rec_shuffle(arr, [])
end


def rec_shuffle(unshuffled, shuffled)
  if unshuffled.empty? == true
    return shuffled
  end

  while unshuffled.empty? != true

    n = unshuffled.length

    random = unshuffled[rand(n)]
    shuffled.push(random)
    unshuffled.delete(random)

  end

puts shuffled


end



shuffle(["Alex", "Wilson", "Rik", "Abs", "Janet", "Arnold", "Herbert", "Petunia", "Doris", "spencer", "felix", "rudolf", "mowgli"])
