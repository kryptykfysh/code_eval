# HIDDEN DIGITS
# CHALLENGE DESCRIPTION:
# 
# In this challenge you're given a random string containing hidden and visible digits. The digits are hidden behind lower case latin letters as follows: 0 is behind 'a', 1 is behind ' b ' etc., 9 is behind 'j'. Any other symbol in the string means nothing and has to be ignored. So the challenge is to find all visible and hidden digits in the string and print them out in order of their appearance.
# 
# INPUT SAMPLE:
# 
# Your program should accept as its first argument a path to a filename. Each line in this file contains a string. You may assume that there will be no white spaces inside the string. E.g.
# 
# abcdefghik
# Xa,}A#5N}{xOBwYBHIlH,#W
# (ABW>'yy^'M{X-K}q,
# 6240488
# OUTPUT SAMPLE:
# 
# For each test case print out all visible and hidden digits in order of their appearance. Print out NONE in case there is no digits in the string. E.g.
# 
# 012345678
# 05
# NONE
# 6240488

my_hash = Hash[('a'..'j').to_a.zip(('0'..'9').to_a)].merge(Hash[('0'..'9').to_a.zip(('0'..'9').to_a)])

File.open(ARGV.shift, 'r').each_line do |line|
  result = line.strip.split(//).inject('') { |str, el|
    str << my_hash.fetch(el, '')
  }
  puts result.empty? ? 'NONE' : result
end

