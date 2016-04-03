# 99 Bottles of Beer
bottles = 99 # any value
bottles.downto(1) do |b|
  if b == 1 
    puts '1 bottle of beer on the wall'
    puts b.to_s + ' bottle of beer'
  else
    puts b.to_s + ' bottles of beer on the wall'
    puts b.to_s + ' bottles of beer'
  end
  puts 'Take one down, pass it around,'
  if (b-1) == 1
    puts (b - 1).to_s + ' bottle of beer on the wall.'
  elsif (b - 1) > 1
    puts (b - 1).to_s + ' bottles of beer on the wall.'
  else
    puts 'no bottles of beer on the wall.'
  end
end