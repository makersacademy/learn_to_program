=begin def roman_to_integer(archaic)
  modern = 0

  translation = {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5, 'I' => 1}
  archaic.reverse!.upcase!
  archaic.split('')
  archaic.length.times do
        translation.each do |roman, english|
          if archaic[-1] == roman then modern += english
          archaic.chop!
          end      
        end
   end
return modern
end

=end

def roman_to_integer(archaic)
  
  translation = {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5, 'I' => 1}
  modern = 0
  subtractor = 0
  
  archaic.upcase!

  archaic.length.times do
    number = translation[archaic[-1]]
    archaic = archaic.chop!
    
    if number >= subtractor
        modern += number
        subtractor = number
    else
        modern -= number
    end
  end        
modern
end