def dictionary_sort arr 
    return arr if arr.length <= 1
    
    middle = arr.pop
    less = arr.select{|x| x.downcase < middle.downcase}
    morr = arr.select{|x| x.downcase >= middle.downcase}
    
    dictionary_sort(less) + [middle] + dictionary_sort(more)
end

words = ['can', 'feel', ' singing', 'lobster', 'banana']
puts(dictionary_sort(words).join(''))