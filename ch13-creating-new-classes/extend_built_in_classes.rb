class Integer
 def fact
    num = self
    
    if num < 0
        return 'You can\'t take the factorial of a negative number!'
    elsif num == 1 
        return 1
    end
        
    num = num * (num-1).fact
    
    return num    
 end
end

puts 4.fact
puts 2.fact
puts 20.fact

