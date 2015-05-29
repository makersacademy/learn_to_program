
words=['Hello', 'dog', 'Cat', 'Banana', 'table', 'Zorro', 'air', 'Alt', 'glass']


def dictionary_sort arr

    arr.sort do |a,b|
    a.upcase <=> b.upcase
    end

end



print dictionary_sort(words)