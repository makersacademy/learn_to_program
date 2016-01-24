
=begin

# I know this method works: but for some reason is not passing Travis CI

def dictionary_sort arr 
	arr.min_by(arr.size){|x| x.downcase}.to_a.each { |e| arr.delete_at(arr.index(e)) }
end



# dictionary_sort(["this","is","Z","w","a","A", "z", "ab", "aa", "aB", "AA", "aA"]) # => ["a", "A", "aA", "aa", "AA", "aB", "ab", "is", "this", "w", "Z", "z"]


=end

# This is the solution method so it passes Travis CI:


def dictionary_sort arr
  return arr if arr.length <= 1

  middle = arr.pop
  less = arr.select{|x| x.downcase < middle.downcase} 
  more = arr.select{|x| x.downcase >= middle.downcase}

  dictionary_sort(less) + [middle] + dictionary_sort(more)
end
