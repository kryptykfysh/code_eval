# You are given a list of numbers which is supplemented with positions that have to be swapped.
#
# 
# INPUT SAMPLE:
# 
# Your program should accept as its first argument a path to a filename. Input example is the following
# 
# 1 2 3 4 5 6 7 8 9 : 0-8
# 1 2 3 4 5 6 7 8 9 10 : 0-1, 1-3
# As you can see a colon separates numbers with positions. 
# Positions start with 0. 
# You have to process positions left to right. In the example above (2nd line) first you process 0-1, then 1-3.
# 
# OUTPUT SAMPLE:
# 
# Print the lists in the following way.
# 
# 9 2 3 4 5 6 7 8 1
# 2 4 3 1 5 6 7 8 9 10

File.open(ARGV.shift, 'r').each_line do |line|
  arr_string, switch_string = line.strip.split(/\s+:\s+/)
  digit_array = arr_string.split(/\s+/)
  switch_strings = switch_string.split(/,\s+/)
  switch_strings.each do |switch|
    source_index, target_index = switch.split('-').map(&:to_i)
    digit_array[source_index], digit_array[target_index] = digit_array[target_index], digit_array[source_index]
  end
  puts digit_array.join(' ')
end

