
class ToRomans

  VALUES = { "I" => 1, 
             "V" => 5,
             "X" => 10,
             "L" => 50,
             "C" => 100,
             "D" => 500,
             "M" => 1000
  }

  def old_roman_numeral number
    to_old_numeral number
  end

private

  def calculator number, result = ""
    if number == 0
      result
    else
      calculator number - elements( number )[ 1 ], result << elements( number )[ 0 ]
    end
  end 

  def elements number
    VALUES.select do |roman, decimal|
      decimal <= number
    end.max_by { |roman,decimal| decimal }
  end

  def to_old_numeral number
    calculator( number ).sub( /(\w{4})/,substitute( $1 ) )
  end

  def substitute pattern
    
  end

end

