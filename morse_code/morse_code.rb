# You have received a text encoded with Morse code and want to decode it.
# 
# INPUT SAMPLE:
# 
# Your program should accept as its first argument a path to a filename. Input example is the following:
# 
# .- ...- ..--- .-- .... .. . -.-. -..-  ....- .....
# -... .... ...--
# Each letter is separated by space char, each word is separated by 2 space chars.
# 
# OUTPUT SAMPLE:
# 
# Print out decoded words. E.g.
# 
# AV2WHIECX 45
# BH3
# You program has to support letters and digits only.
morse_dict = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--..",
  " " => " ",
  "1" => ".----",
  "2" => "..---",
  "3" => "...--",
  "4" => "....-",
  "5" => ".....",
  "6" => "-....",
  "7" => "--...",
  "8" => "---..",
  "9" => "----.",
  "0" => "-----"
}

reverse_morse_dict = Hash[morse_dict.values.zip(morse_dict.keys)]

File.open(ARGV.shift, 'r').each_line do |line|
  puts line.split(/\s/).map { |x| x == '' ? ' ' : reverse_morse_dict[x].upcase }.join
end

