
=begin
def sort some_array
  recursive_sort some_array, []
end


def recursive_sort unsorted_array, sorted_array
  sorted_array = unsorted_array.sort { |x, y| x <=> y }
end

puts sort ["meems", "meems", "freems", "frrops", "zeeps", "haha"]
=end




# The well-known quicksort algorithm.
=begin
def sort arr
  return arr if arr.length <= 1

  if arr.pop.capitalize != arr.pop
    middle = arr.pop
    less = arr.select{|x| x < middle}
    more = arr.select{|x| x >= middle}

  elsif arr.pop.capitalize == arr.pop
    middle = arr.pop
    less = arr.select{|x| x < middle}
    more = arr.select{|x| x >= middle}

  end
sort(less) + [middle] + sort(more)
end
p(sort(['blablabla', 'car', 'Alpha', 'zebra']))
=end

def super_sort unsorted_array
  capitalized = unsorted_array.select {|x| x.capitalize == x}
  uncapitalized = unsorted_array.select {|x| x.capitalize != x}
  capitalized.sort! {|x, y| x <=> y }
  uncapitalized.sort! {|x, y| x <=> y }
  puts capitalized
  puts
  puts
  puts uncapitalized
=begin
      if x == x.capitalize
      capitals << x
      puts capitals
=end

end

super_sort ["baaa", "Baa", 'car', 'Car']
