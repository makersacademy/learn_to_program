require_relative 'english_number'

@number = 100

while @number > 0
  if @number > 1
    puts ((english_number @number) + ' bottles of beer on the wall, ' +
    (english_number @number) + ' Bottles of beer!')
    puts ('Take one off the wall and pass it around or smth, ' +
    (english_number (@number - 1)) + ' Bottles of beer on the wall!')
  elsif @number == 1
    puts "One bottle of beer on the wall."
  end
  @number = @number - 1
end
