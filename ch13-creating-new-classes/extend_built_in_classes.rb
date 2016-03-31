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
        num = self
  
        digits = num.to_s.split ""                                                  # creates an array of the 
        size = digits.count                                                         # digits in number entered
  
        if size == 3 then digits = digits.unshift("0") end                          # This section of code remaps the array to
        if size == 2 then digits = digits.unshift("0", "0") end                     # a consistent size inserting valus for 0
        if size == 1 then digits = digits.unshift("0", "0", "0") end                # in place of digits to represent thousands or hundreds etc. if absent
    
        string = ""
    
        digits.map! { |x| x.to_i }          # remaps the digits array for integers in place of string values
    
        if digits[0] == 0
            string << ""
        else
            string << "M" * digits[0]           # inserts correct number of thousands to string 
        end
    
        if digits[1] == 0
            string << ""
        elsif digits[1] == 9                   # if the value for number of hundreds is 9 insert roman numerals for 900
            string << "CM"
        elsif digits[1] == 4                # if the no. of hundreds is 4 insert roman numerals for 400
            string << "CD"
        elsif digits[1] == 5
            string << "D"                           # if no. of hundreds is 5 insert numerals for 500
        elsif digits[1] < 4
            string << ("C" * digits[1])                 #if no. hundreds less than 4 inserts that many hundreds
        else
            string << "D" + ("C" * (digits[1] - 5))         # otherwise if its above 5 and less than 9 insert value for 5 plus that many hundreds - 5
        end
    
        if digits[2] == 0                       # if no. of tens = 0 add nothing
            string << ""
        elsif digits[2] == 9                    #if no. of tens = 9 add roman numerals for 90
            string << "XC"
        elsif digits[2] == 4                    # if no. tens = 4 add roman numerals for 40
            string << "XL"
        elsif digits[2] == 5                    #if no. of tens = 5 add numerals for 50
            string << "L"      
        elsif digits[2] < 4                     #if no. tens less than 4 add numerals for that many tens
            string << ("X" * digits[2])
        else
            string << "L" + ("X" * (digits[2] - 5))         
        end
    
    
        if digits[3] == 0
            string << ""
        elsif digits[3] == 9                  
            string << "IX"
        elsif digits[3] == 4              
            string << "IV"
        elsif digits[3] == 5
            string << "V"      
        elsif digits[3] < 4
            string << ("I" * digits[3])
        else
            string << "V" + ("I" * (digits[3] - 5))
        end
    string
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

