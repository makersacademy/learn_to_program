def music_shuffle filenames

    filenames - filenames.sort
    len = filenames.length
#sorts array of songs and gets length

    2.times do 
    l_idx =0
    r_idx = len/2
    shuf= []
#splits array into2.

        while shuf.length < len
            if shuf.length%2 ==0
            shuf.push(filenames[r_idx])
            r_idx = r_idx + 1
            # pushes songs with random numbers into new array
            
            else 
            shuf.push(filenames[l_idx])
            l_idx = l_idx + 1
            end
        end

    filenames = shuf
    end
    
    arr = []
    cut = rand(len)
    idx = 0

        while idx < len
        arr.push(filenames[(idx+cut)%len])
        idx = idx + 1
        end

    arr
end

songs = ['aaaaa', 'bbbbb', 'cccc', 'ddddd', 'eeeee', 'fffff']
puts (music_shuffle(songs))
