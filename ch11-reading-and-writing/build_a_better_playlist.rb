def music_shuffle some_array
    recursive_shuffle some_array, []
end

def recursive_shuffle unsorted_array, sorted_array
        x = (0...(unsorted_array.count)).sort_by{rand}
        x.each{|num| sorted_array << unsorted_array[num]}
        return sorted_array
end

  sort(['pear','apple', 'banana','orange','blackberry'])
end

require '/Users/thadycondon/Documents/learn_to_program/ch10-nothing-new/shuffle.rb'

Dir.chdir '/Users/thadycondon/Desktop/Chap11'

tune_names = Dir['*.{m3u,mp3,m4a}']
tunes = shuffle tune_names
puts 'What would you like to call this playlist?'
batch_name = gets.chomp

puts

print "Downloading #{tune_names.length} files: "
tune_number = 1
tunes.each do |name| print '.'
  new_name = if tune_number < 10
    "#{batch_name}0#{tune_number}.m3u"
  else
    "#{batch_name}#{tune_number}.m3u"     
  end
    if File.exist?("#{batch_name}#{tune_number}.m3u") == true || File.exist?("#{batch_name}0#{tune_number}.m3u") == true
      puts 'File already exists, abandon ship!'
    exit
  end

  File.rename name, new_name
  tune_number = tune_number + 1
  
end



puts
puts 'Done'