def shuffle arr
    
        shuffled_array = []
        
        
        
        while shuffled_array.uniq.length < arr.length
            
            arr.each do |word|
                
                shuffled_array.push arr[rand(arr.length)]
                
            end
        end
        
        return shuffled_array.uniq!
        
    end
    
    
    puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
    puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
    puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
    puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
    puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
    puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
    puts shuffle(['kotek', 'milusi', 'spadl z drzewa', 'oj', 'kotek biedny'])
