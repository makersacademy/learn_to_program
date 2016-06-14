#=begin
def old_roman_numeral(num)

  num_string = ""
  left = num

  #writing 1000's
  write = left - (left % 1000)
  left = left % 1000
  if write != 0
    num_string = "#{"M" * (write/1000)}"
  end

  #writing 500's
  write = left - (left % 500)
  left = left % 500
  if write != 0
    num_string = "#{num_string}D"
  end

  #writing 100's
  write = left - (left % 100)
  left = left % 100
  if write != 0
    num_string = "#{num_string}#{"C" * (write/100)}"
  end

  #writing 50's
  write = left - (left % 50)
  left = left % 50
  if write != 0
    num_string = "#{num_string}L"
  end

  #writing 10's
  write = left - (left % 10)
  left = left % 10
  if write != 0
    num_string = "#{num_string}#{"X" * (write/10)}"
  end

  #writing 5's
  write = left - (left % 5)
  left = left % 5
  if write != 0
    num_string = "#{num_string}V"
  end

  #writing 1's
  write = left

  num_string = "#{num_string}#{"I" * write}"

  num_string

end
