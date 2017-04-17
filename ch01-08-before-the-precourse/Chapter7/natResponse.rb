while true || 'Spike' > 'Angel'
  puts 'What would you like to ask Nat to do?'
  request = gets.chomp

  puts 'Nat, could you please ' + request + '?'

  puts 'Joe can ' + request + ' too!'
  puts 'Mitch can ' + request + ' too!'
  puts 'Yas can ' + request + ' too!'
  puts 'Mel can ' + request + ' too!'
  puts 'Sis can ' + request + ' too!'
  puts

  if request == 'STOP!'
    break
  end
end
