File.open(ARGV.shift, 'r').each_line do |line|
  puts line.chomp.swapcase
end

