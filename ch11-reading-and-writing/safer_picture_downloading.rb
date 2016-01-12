def safe_pic_dl

  Dir.chdir '/home/ubuntu/testdir/photos/destination/'

  pic_names = Dir['/home/ubuntu/testdir/photos/source/**/*.jpg']
  puts 'What would you like to call this batch?'
  batch_name = gets.chomp
  puts
  print "Downloading #{pic_names.length} files: "
  pic_number = 1
  new_name = ""

  pic_names.each do |name|
    print '.'
    new_name = if pic_number < 10
      "#{batch_name}0#{pic_number}.jpg"
    else
      "#{batch_name}#{pic_number}.jpg"
    end
    break if File.exist? (new_name)
    File.rename name, new_name
    pic_number += 1
  end

  puts "\nDone! Renamed all files successfully!" if pic_number-1 == pic_names.length
  puts "\n\nError! #{new_name} file exists. Quitting..." if pic_number-1 < pic_names.length
  puts "#{pic_number-1} out of #{pic_names.length} file(s) renamed."

end

safe_pic_dl
