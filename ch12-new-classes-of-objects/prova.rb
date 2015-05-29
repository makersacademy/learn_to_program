module Romans

  LITERALS = {
    'M'   =>  1000,
    'CM'  =>  900,
    'D'   =>  500,
    'CD'  =>  400,
    'C'   =>  100,
    'XC'  =>  90,
    'L'   =>  50,
    'XL'  =>  40,
    'X'   =>  10,
    'IX'  =>  9,
    'V'   =>  5,
    'IV'  =>  4,
    'I'   =>  1
  }

  def roman_to_integer
    split_roman.reduce._with_index do |result, ( roman, literal ), index|
      split_roman[ index ] < split_roman[ index -1 ] ? result - literal : 
      result + literal
    end
  end


  def split_roman
    split( // )
end