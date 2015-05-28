class Roman

  VALUES = {  500 => "L",
              100 => "C",
              90  => "XC",
              50  => "D",
              10  => "X",
              9   => "IX", 
              5   => "V",
              4   => "IV",
              1   => "I",             
  }

  def convert number
    output = ''
    
    VALUES.each do |key,value|
     ( number / key ).times do
        output << value
        number -= key 
      end
    end

    output
  end

end

