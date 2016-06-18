#config_path = File.expand_path(File.join(File.dirname(__FILE__), "Chap12_BirthdayHelper.txt"))
config_path = '/Users/thadycondon/Desktop/Chap12_BirthdayHelper.txt'

puts config_path

File.open(config_path, "r") do |f|
  hash = Hash.new
  hash2 = Hash.new
  hash3 = Hash.new
  
f.each_line do |line|
    splat = line.split(/,\s+/, 2)
    hash = {splat[0].chomp => splat[1].chomp}
    hash3 = hash2.merge!(hash)
end
  
  name_array = hash3.keys
  puts 'Name please?'
  name = gets.chomp.capitalize
  check = name_array.include? name

  if check == false
    while check == false
      puts 'Name not available, please try again?'
      name = gets.chomp.capitalize
      check = name_array.include? name
    end
  end
  
  birthday = hash3[name]
  puts "#{name}'s birthday is on #{birthday}"

end
