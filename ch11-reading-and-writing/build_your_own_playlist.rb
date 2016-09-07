music_names = Dir['/**/*.wav'].shuffle

File.open 'somefiles', 'w' do |f|
  music_names.each do |wav|
    f.write wav+"\n"
  end
end

puts "finished"
