puts "Where are the files located that you want to download?"

directory = gets.chomp

def change_dir dir

  if File.exist?(dir)
    Dir.chdir "#{dir}"
    puts Dir.pwd
  else
    puts "Invalid Directory. Please input a valid directory"
    change_dir gets.chomp
  end

end

change_dir directory

pic_names = Dir['**/*.{JPG,jpg}']

puts "Where would you like to download these pictures to?"

change_dir gets.chomp

puts "What would you like to call this batch of photos?"

batch_name = gets.chomp
