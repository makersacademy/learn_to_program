def dictionary_sort arr
  arr.sort! do |a, b|
    a.downcase <=> b.downcase
  end
end
