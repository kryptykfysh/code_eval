# Write a program to determine the shortest repetition in a string. 
# A string is said to have period p if it can be formed by concatenating one or more repetitions of another string of length p. For example, the string "xyzxyzxyzxyz" has period 3, since it is formed by 4 repetitions of the string "xyz". It also has periods 6 (two repetitions of "xyzxyz") and 12 (one repetition of "xyzxyzxyzxyz").
# 
# INPUT SAMPLE:
# 
# Your program should accept as its first argument a path to a filename. Each line will contain a string of up to 80 non-blank characters. E.g.
# 
# abcabcabcabc
# bcbcbcbcbcbcbcbcbcbcbcbcbcbc
# dddddddddddddddddddd
# adcdefg
# OUTPUT SAMPLE:
# 
# Print out the smallest period of the input string. E.g.
# 
# 3
# 2
# 1
# 7

File.open(ARGV.shift, 'r').each_line do |line|
  target = line.strip
  puts (0..target.size - 1).detect { |end_index|
    target.size % (end_index + 1) == 0 &&
      target == target[0..end_index] * (target.size / (end_index + 1))
    } + 1
end

