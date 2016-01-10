def dictionary_sort arr
  if arr.length <= 1
    return arr
  end

  check = arr.pop

  after = arr.select{|word| word.downcase >= check.downcase}
  before = arr.select{|word| word.downcase < check.downcase}

  dictionary_sort(before) + [check] + dictionary_sort(after)

end

#puts dictionary_sort(["Cat","rat","apple","Ball"])
#puts dictionary_sort(["Cat","RAt","aPPle","BalL","WALK","AnGleS","ElephaNTS"])
