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

def batch_name bname

  if File.exist?("#{bname}/\d+/.{JPG,jpg}")
    puts "Error. A batch already exists with this name.\n
    Please choose another name for this batch."
    batch_name gets.chomp
  else
    bname
  end

end

batch = batch_name gets.chomp

pic_number = 1

pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10
      "#{batch}0#{pic_number}.jpg"
    else
      "#{batch}#{pic_number}.jpg"
    end

    File.rename name, new_name

    pic_number += 1
  end

puts #
puts "Pictures moved to #{Dir.pwd} and named \"#{batch}\""
