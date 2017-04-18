
def log desc, &block
	$depth = ($depth || -1) + 1
	indent = " "*$depth

	puts "#{indent}Beginning \"#{desc}\"..."
	result = block.call
	puts "#{indent}...\"#{desc}\" finished, returning: #{result}"

	$depth -= 1
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lOtS oF lOVe'.downcase
    end
    7 * 3 * 2
  end

  log 'yet another block' do
    '!doof naidnI evol I'.reverse
  end
  '0' == "0"
end