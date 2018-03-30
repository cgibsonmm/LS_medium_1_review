# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

# I need to display dimonds, each line two more stars must be added on until
# length condition is met then each line after I need to subtract two from
# each line

# I belive I can use the .center function on a string to obtain correct ouput
# --- TESTING idea of .center
# def dimond(number)
#   puts ('*'.center(3))
#   puts ('***'.center(3))
# end

# this worked so now I belive I can define a method that that will use .center
# I can pass the length to the method and set that as a var that can be used
# not only to be called in .center but also to control the ammout of * being
# passed to the stdout

# I am going to attempt to loop through the length and each pass add two *
# until length is reached than revese and subtract

# start
# def method that take length
# create a ticker = 1
# loop length times
# each time display '*' + ticker  This needs to be a var so I can call .cent
# ticker += 2 until == length can define a boolen to handle plus minus
# then ticker -= 2
# end

def diamond(length)
  ticker = 1
  hit_length = false
  display = '*'
  length.times do
    puts (display * ticker).center(length)
    hit_length == false ? ticker += 2 : ticker -= 2
    ticker == length ? hit_length = true : next
  end
end

diamond(9)
