def dictionary_sort arr
return arr if arr.length <= 1
middle = arr.pop
smaller = arr.select{|word| word.downcase < middle.downcase}
larger = arr.select{|word| word.downcase >= middle.downcase}

dictionary_sort(smaller) + [middle] + dictionary_sort(larger)

end


=begin
def dictionary_sort
  array = []
  while true
  a = gets.chomp
  array << a
  if a == ""
    break
  end
end
puts array.sort
end
=end
