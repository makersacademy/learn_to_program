def roman_numeral num
  @string = ""
  @num = num
  @left = num

  def get_it(string_rep, num_rep)
    divided = @num / num_rep
    @left = @num - divided * num_rep
    @string << string_rep * divided
    @num = @left
  end

  hash = {"M"=>1000, "D"=>500, "C"=>100, "L"=>50, "X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1}
  hash.each {|key, value| get_it(key, value)}

  @string

end
