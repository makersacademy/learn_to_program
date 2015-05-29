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
      split(//).each_with_index.reduce( 0 ) do |result, ( literal, index )|
        comparator( literal, index ) ? result = ( result + LITERALS[ literal ] ) : result = (result - LITERALS[ literal ] )
        result
      end
    end

    def comparator literal, index
      if index + 1 == length
        true
      else
        LITERALS[ literal ] >= LITERALS[ self[ index + 1 ] ]
      end
    end

end

String.send :include, Romans