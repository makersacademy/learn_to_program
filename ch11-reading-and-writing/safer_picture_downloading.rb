# all the pictures to be moved
pic_names = Dir["/home/rob/Pictures_to_move/**/*.jpg"]

# directory to store all the pictures
Dir.chdir "/home/rob/Pictures"

# existing file names in storage directory
existing_names = Dir["*.jpg"]

puts Dir.pwd

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} pictures: "

# counter
pic_number = 1

pic_names.each do |name|
	print '.'    # progress bar

  new_name = if pic_number < 10
    "#{batch_name}00#{pic_number}"
  elsif pic_number < 100
      "#{batch_name}0#{pic_number}"
  else
      "#{batch_name}#{pic_number}"
  end

  def rename_if_dupe(name, existing_names)
    if existing_names.include? "#{name}.jpg"
      new_name = rename_if_dupe("#{name}x", existing_names)
    else
      new_name = name
    end
  end

  new_name = "#{rename_if_dupe(new_name, existing_names)}.jpg"

  File.rename name, new_name

  pic_number += 1

end

puts
puts 'Done.'