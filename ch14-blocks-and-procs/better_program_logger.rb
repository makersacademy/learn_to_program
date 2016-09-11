# CREATE A GLOBAL VARIABLE THAT WILL DETERMINE THE INDENT DEPTH
$logger_depth = 0

# CREATE THE METHOD, WHICH TAKES A STRING AND A BLOCK
def better_log desc, &block
  # SET UP THE INDENT TO BE A BLANK SPACE MULTIPLIED BY THE GLOBAL LOGGER DEPTH VARIABLE
  prefix = ' '*$logger_depth
  # PUTS THE STARTING STRING, USING THE STRING PASSED TO THE METHOD
  puts prefix + 'Beginning "' + desc + '"...'

  # SET UP THE LOGGER DEPTH VARIABLE TO INCREASE THE INDENT BY ONE BLANK SPACE
  $logger_depth = $logger_depth + 1
  
  # CALL THE BLOCK THAT WAS PASSED AS THE SECOND ARGUMENT IN THE METHOD CALL
  result = block.call

  # SET UP THE LOGGER DEPTH VARIABLE TO DECREASE THE INDENT BY ONE BLANK SPACE
  $logger_depth = $logger_depth - 1

  # PUTS THE ENDING STRING, USING THE STRING PASSED TO THE METHOD, AND THE RESULT RETURNED FROM THE BLOCK
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end

better_log 'outer block' do
  better_log 'some little block' do
    better_log 'teeny-tiny block' do
      'lOtS oF lOVe'.downcase
    end

    7 * 3 * 2
  end

  better_log 'yet another block' do
    '!doof naidnI evol I'.reverse
  end

  '0' == "0"
end
