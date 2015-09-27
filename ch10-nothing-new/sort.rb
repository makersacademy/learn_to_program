def sort(arr)
  return arr if arr.length < 1

  middle = arr.pop
  before = arr.select { |item| item < middle}
  after = arr.select { |item| item >= middle}

  sort(before) + [middle] + sort(after)
end

puts(sort(["I","just","feel","like","dancing"]).join(' '))