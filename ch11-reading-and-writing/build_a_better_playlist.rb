
#BUILD A BETTER PLAYLIST

# NEED TO REVIEW THIS IN DETAIL - TO FULLY UNDERSTAND

#Shuffle deck twice

def music_shuffle filenames
    
    filenames = filenames.sort
    len = filenames.length
    
    # Shuffle twice
    2.times do
        
        l_idx = 0 #index of next card in left pile
        r_idx = len/2 # index of next card in right pile  NEED TO UNDERSTAND WHY
        shuf = []
        
        while shuf.length < len
            if shuf.length%2 == 0 #take card from right pile
                shuf.push(filenames[r_idx])
                r_inx = r_idx + 1
                else
                # take card from left pile
                shuf.push (filenames[l_idx])
                l_idx = l_idx +1
            end
        end
        filenames = shuf
    end
    
    # And cut the deck
    arr = []
    cut = rand(len) # index of card to cut at
    idx = 0
    
    while idx < len
        arr.push(filenames[(idx+cut)%len])
        idx = idx + 1
    end
    
    arr
    
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts (music_shuffle(songs))
