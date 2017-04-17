def sort arr
  if arr.length <= 1
    return arr
  end

  check = arr.pop

  after = arr.select{|word| word >= check}
  before = arr.select{|word| word < check}

  sort(before) + [check] + sort(after)

end

# puts sort(["cat","rat","apple","ball"])
#puts sort(["Cat","rat","apple","Ball"])
