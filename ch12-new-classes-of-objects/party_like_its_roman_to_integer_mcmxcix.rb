module Romans

  LITERALS = {
    'M'   =>  1000,
    'D'   =>  500,
    'C'   =>  100,
    'L'   =>  50,
    'X'   =>  10,
    'V'   =>  5,
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