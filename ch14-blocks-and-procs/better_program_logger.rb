$logcounter = 0
def log desc, &block
	cheat = ' ' * $logcounter 
	puts cheat + 'Beginning "' + desc + '"...'
	$logcounter = $logcounter + 1
  	result = block.call
  	$logcounter = $logcounter -1
  	puts cheat + '..."' + desc + '" finished, returning: ' + result.to_s # your code here
end



log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lOtS oF lOVe'.downcase
    end

    7*6
  end

  log 'yet another block' do
    '!doof naidnI evol I'.reverse
  end

  '0' == "0"
end
