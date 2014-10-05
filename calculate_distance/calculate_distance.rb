# You have coordinates of 2 points and need to find the distance between them.
# 
# INPUT SAMPLE:
# 
# Your program should accept as its first argument a path to a filename. Input example is the following
# 
# (25, 4) (1, -6)
# (47, 43) (-25, -11)
# All numbers in input are integers between -100 and 100.
# 
# OUTPUT SAMPLE:
# 
# Print results in the following way.
# 
# 26
# 90
# You don't need to round the results you receive. 
# They must be integer numbers between -100 and 100.

File.open(ARGV.shift, 'r').each_line do |line|
  coords = line.strip.scan(/-?\d+/).map(&:to_i).each_slice(2).to_a
  puts Math.sqrt(coords[0].zip(coords[1]).map { |x| x.reduce(:-)**2 }.reduce(:+)).to_i
end

