def music_shuffle filenames
    filenames = filenames.sort
    fileLength = filenames.length
    
    2.times do
        left = 0
        right = fileLength / 2
        shuf = []
        
        while shuf.length < fileLength
            if shuf.length % 2 == 0
                shuf.push(filenames[right])
                right = right + 1
                else
                shuf.push(filenames[left])
                left = left + 1
            end
        end
        
        file = shuf
    end
    
    arr = []
    cut = rand(fileLength)
    index = 0
    
    while index < fileLength
        arr.push(filenames[(index + cut ) % fileLength])
        index += 1
    end
    arr
end

songs = ['with me','Hi','goodbye','kiss me','never','go away']

puts music_shuffle(songs)