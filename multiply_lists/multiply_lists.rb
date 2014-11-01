# MULTIPLY LISTS
# CHALLENGE DESCRIPTION:
# 
# You have 2 lists of positive integers. Write a program which multiplies corresponding elements in these lists.
# 
# INPUT SAMPLE:
# 
# Your program should accept as its first argument a path to a filename. Input example is the following
# 
# 9 0 6 | 15 14 9
# 5 | 8
# 13 4 15 1 15 5 | 1 4 15 14 8 2
# The lists are separated with a pipe char, numbers are separated with a space char. 
# The number of elements in lists are in range [1, 10]. 
# The number of elements is the same in both lists. 
# Each element is a number in range [0, 99].
# 
# OUTPUT SAMPLE:
# 
# Print the result in the following way.
# 
# 135 0 54
# 40
# 13 16 225 14 120 10

File.open(ARGV.shift, 'r').each_line do |line|
  split_string = line.strip.split(/\s+\|\s+/)
  digits = split_string.map { |x| x.split(/\s+/).map(&:to_i) }
  puts  digits.first.zip(digits.last).map { |a, b| a * b }.join(' ')
end

