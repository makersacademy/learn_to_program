def shuffle arr

arr.sort_by{rand}
end

print shuffle(['apple','garden','pear','table', 'fence'])
