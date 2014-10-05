# Having a string representation of a set of numbers you need to print this numbers.
# 
# All numbers are separated by semicolon. There are up to 20 numbers in one line. The numbers are "zero" to "nine"
# 
# INPUT SAMPLE:
# 
# Your program should accept as its first argument a path to a filename. Each line in this file is one test case. E.g.
# 
# zero;two;five;seven;eight;four
# three;seven;eight;nine;two
# OUTPUT SAMPLE:
# 
# Print numbers in the following way:
# 
# 025784
# 37892

number_hash = Hash[%w(zero one two three four five six seven eight nine).zip((0..9).to_a)]

File.open(ARGV.shift, 'r').each_line do |line|
  puts line.strip.split(/;/).map { |x| number_hash[x] }.join
end
