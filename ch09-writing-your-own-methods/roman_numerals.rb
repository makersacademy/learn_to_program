def roman_numeral num
    if num > 0 || num < 3000
        
        m = 'M' * (num / 1000)
        
        ((num % 1000)/100) == 9 ? d = 'CM' : d = 'D' * ((num % 1000)/500)
        
        if d == 'CM'
            c = ""
            else
            ((num % 500)/100) == 4 ? c = 'CD' : c = 'C' * ((num % 500)/100)
        end
        
        ((num % 100)/10) == 9 ? l = 'XC' : l = 'L' * ((num % 100)/50)
        
        if l == 'XC'
            x = ""
            else
            ((num % 50)/10) == 4 ? x = 'XL' : x = 'X' * ((num % 50)/10)
        end
        
        ((num % 10)/1) == 9 ? v = 'IX' : v = 'V' * ((num % 10)/5)
        
        if v == 'IX'
            i = ""
            else
            ((num % 5)/1) == 4 ? i = 'IV' : i = 'I' * ((num % 5)/1)
        end
        
        return m+d+c+l+x+v+i
        
        else
        puts "Out of range!"
    end
end

roman_numeral 99