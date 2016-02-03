def old_roman_numeral num
  @string = ""
  @num = num
  @left = num

  def get_it(string_rep, num_rep)
    divided = @num / num_rep
    @left = @num - divided * num_rep
    @string << string_rep * divided
    @num = @left
  end

  get_it("M", 1000)
  get_it("D", 500)
  get_it("C", 100)
  get_it("L", 50)
  get_it("X", 10)
  get_it("V", 5)
  get_it("I", 1)

  @string
end
