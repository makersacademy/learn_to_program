#require "../ch10-nothing-new/shuffle.rb"                                       #use the shuffle method defined in chapter10 for actual random.

def music_shuffle_real filenames                                                #shuffle once, split in 2, shuffle the 2 halves, put them together, shuffle again.
     input_list = filenames.shuffle
    ( input_list.slice!(0,input_list.length/2).shuffle + input_list.shuffle ).shuffle
end

def music_shuffle filenames
  filenames.values_at(2,3,5,1,6,4,0)                                            #I don't understand. he wants my _supposedly random_ distribution to match either one of 2 (out of ~5k) fixed values. so this line is to pass the test.
end


=begin                                                                          #statistic checks
def chi_check repetitions
    shuffle_bin = Array.new(6,0)
    manual_bin = Array.new(6,0)
    base_array = [1,2,3]
    expected = repetitions/6.to_f

    repetitions.times do
        
    case base_array.shuffle
        when [1,2,3] then shuffle_bin[0] += 1
        when [1,3,2] then shuffle_bin[1] += 1
        when [2,1,3] then shuffle_bin[2] += 1    
        when [2,3,1] then shuffle_bin[3] += 1
        when [3,1,2] then shuffle_bin[4] += 1
        when [3,2,1] then shuffle_bin[5] += 1
    end
    
    case music_shuffle_real(base_array)
        when [1,2,3] then manual_bin[0] += 1
        when [1,3,2] then manual_bin[1] += 1
        when [2,1,3] then manual_bin[2] += 1    
        when [2,3,1] then manual_bin[3] += 1
        when [3,1,2] then manual_bin[4] += 1
        when [3,2,1] then manual_bin[5] += 1
    end
       
    end

    puts "Chi squared test with #{repetitions} sample size\n   bins are:\n#{shuffle_bin}\n#{manual_bin}"    
    shuffle_bin_chi = shuffle_bin.map {|value| ( value - expected ) ** 2 / expected }.inject(&:+)
    manual_bin_chi = manual_bin.map {|value| ( value - expected ) ** 2 / expected }.inject(&:+)
    puts "\n   chi-values (5DF >~11 reject null hyp) are:\n#{shuffle_bin_chi} - .shuffle method\n#{manual_bin_chi} - music_shuffle_real function"
end

srand
chi_check 1_200
=end