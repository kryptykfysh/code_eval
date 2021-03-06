# LONGEST WORD
# CHALLENGE DESCRIPTION:
# 
# In this challenge you need to find the longest word in a sentence. If the sentence has more than one word of the same length you should pick the first one.
# 
# INPUT SAMPLE:
# 
# Your program should accept as its first argument a path to a filename. Input example is the following
# 
# some line with text
# another line
# Each line has one or more words. Each word is separated by space char.
# 
# OUTPUT SAMPLE:
# 
# Print the longest word in the following way.
# 
# some
# another

File.open(ARGV.shift, 'r').each_line do |line|
  puts line.strip.split(/\s+/).reduce('') { |longest, word|
    longest = word if word.size > longest.size
    longest
  }
end

