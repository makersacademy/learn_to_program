years = ((Time.new - Time.local(1947, 3, 30)) / 31449600).floor
months = ((years - years.floor) * 12).floor
if months >= 1
puts "#{years}years and #{months}months"
else
puts "#{years}years"
end
puts "SPANK!" * years