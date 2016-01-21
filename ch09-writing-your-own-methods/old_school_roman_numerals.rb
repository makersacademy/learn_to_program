def old_roman_numeral
  DIGITS = [
    [1000, "M"],
    [500, "D"],
    [100, "C"],
    [50, "L"],
    [10, "X"],
    [5, "V"],
    [1, "I"]
  ]

      def convert(n)
        result = ""
        DIGITS.each do |limit, glyph|
        while n >= limit
          result << glyph
          n -= limit
        end
      end
      result
    end
end
