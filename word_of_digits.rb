# Write a method that takes a sentence string as input, and returns
# the same string with any sequence of the words 'zero', 'one', 'two',
# 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted
# to a string of digits.

# can handle with gsub! with gsub i will not need to worry about (!?,.)/
# need to define a method that takes a string
# need to create a hash with all numbers and values
# gsub can then look through and swap string for integer(as a string) values
# return the new senctence

# begin
# define hash
# hash.each {|k, v| string.gsub!(k, v)}
# then return that

def word_to_digit(string)
  numbers = {
    'zero' =>   '0',
    'one' =>    '1',
    'two' =>    '2',
    'three' =>  '3',
    'four' =>   '4',
    'five' =>   '5',
    'six' =>    '6',
    'seven' =>  '7',
    'eight' =>  '8',
    'nine' =>   '9'
  }
  
  numbers.each { |k, v| string.gsub!(k, v) }
  string
end


word_to_digit('Please call me at five five five one two three Four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
