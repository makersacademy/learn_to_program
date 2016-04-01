class Integer
    
    def factorial
        n = self
        if n == 0
            return 1
        else
            n * (n-1).factorial
        end
    end

    def to_roman
        n = self
  
        num = ''

        num = num + 'M' * (n / 1000)
        num = num + 'D' * (n % 1000 / 500) 
        num = num + 'C' * (n % 500 / 100) 
        num = num + 'L' * (n % 100 / 50) 
        num = num + 'X' * (n % 50 / 10) 
        num = num + 'V' * (n % 10 / 5) 
        num = num + 'I' * (n % 5 / 1) 
        num
    end





end


class Array
   
    def shuffle
  
        arr = self
  
        shuf = []

        while arr.length > 0
    
            rand_index = rand(arr.length)

            curr_index = 0
            array = []

            arr.each do |item|
            
            if curr_index == rand_index
                shuf.push item
            else
                array.push item
            end

        curr_index = curr_index + 1
            end

        arr = array
        end

    shuf
    end 
    
end

