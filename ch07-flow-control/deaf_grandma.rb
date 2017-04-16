bye_count = 0

while true
  input = gets.chomp!
  if input == "BYE"
    bye_count += 1
  else
    bye_count = 0
  end
  if bye_count == 3
    puts "OK, COME BACK SOON!"
    break
  end
  if input != input.upcase || input == ""
    puts "HUH?! SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE #{1930 + rand(21)}!"
  end
end
