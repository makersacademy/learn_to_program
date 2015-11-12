def dictionary_sort arr
  outcome = []
  while arr.length != 0
    first = arr.first
    pos = 0
    arr.each_with_index do |item, index|
      if item.downcase < first.downcase
        first = item
        pos = index
      end
    end
      arr.delete_at(pos)
      outcome << first
  end
    outcome
end
