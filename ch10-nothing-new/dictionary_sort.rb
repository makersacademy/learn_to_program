def dictionary_sort arr
    return arr if arr.length <= 1

    on_point= arr.pop
    left= arr.select { |x| x.downcase < on_point.downcase}
    right= arr.select{ |x| x.downcase >= on_point.downcase}
    dictionary_sort(left) + [on_point] + dictionary_sort(right)
end

p dictionary_sort([' can' ,' feel' ,' Singing' ,' like' ,' A' ,' can' ])