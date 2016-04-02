def grandfather_clock description, &block

now = Time.new.hour
if now > 12
  now = now - 12
end
now.times do
  block.call
end
end


grandfather_clock 'Dong' do
  puts 'DONG!'
end