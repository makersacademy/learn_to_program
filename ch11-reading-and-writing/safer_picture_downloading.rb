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


pic_names = Dir["#{Dir.pwd}/**/*.{JPG,jpg}"]


puts "Where would you like to download these pictures to?"
change_dir gets.chomp

puts "What would you like to call this batch of photos?"

batch = gets.chomp


pic_number = 1

pic_names.each do |name|
  print '.'

  new_name = if pic_number < 10
      "#{batch}0#{pic_number}.jpg#"
    else
      "#{batch}#{pic_number}.jpg"
    end


    while File.exist?(new_name)
        puts "Error #{new_name} already exists, please enter a name to save #{name} as."
        new_name = gets.chomp
    end

    File.rename name, new_name
    
    pic_number += 1

  end

puts #
puts "Pictures moved to #{Dir.pwd} and named \"#{batch}\""
