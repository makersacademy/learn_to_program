def roman_to_integer roman
  numerals_hash = {'I'=>1, 'V'=>5, 'X'=>10, 'L'=>50, 'C'=>100, 'D'=>500, 'M'=>1000}
  roman.upcase!
  roman_arr = roman.split('')
  int = 0

  if !roman.match(/[MDCLXVI]+/)
    return nil
  else
    while roman_arr.size > 0
      current  = numerals_hash[roman_arr.pop]
      previous = numerals_hash[roman_arr[-1]]
      int     += current

      int -= numerals_hash[roman_arr.pop] if !!previous && previous < current
    end
  end
  int
end
