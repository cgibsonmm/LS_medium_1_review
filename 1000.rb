require 'pry'
# You have a bank of switches before you, numbered from 1 to n. Each switch
# is connected to exactly one light that is initially off. You walk down the
# row of switches and toggle every one of them. You go back to the beginning,
# and on this second pass, you toggle switches 2, 4, 6, and so on. On the
# third pass, you go back again to the beginning and toggle switches 3, 6, 9,
# and so on. You repeat this process and keep going until you have been through
# n repetitions.

# def a method that takes a n
# create a array of hashs that holds index and status of light as long as the n
# create a counter that keeps track of looping
# loop the number of times passed
# in each loop eval the lights
#   - if the light is divisable by the ticker change light status
# after loop return all indexs where light is on
#   - push the index of all lights on to new array to return

# -V  0.1
# def lights(number)
#   lights_array = []
#   (1..number).to_a.each do |num|
#     current_light = {}
#     current_light[:index] = num
#     current_light[:status] = 'off'
#     lights_array << current_light
#   end
#
#   ticker = 1

# => need to loop thourgh range of origainal length of lights, and each time
# => loop through all of the lights.
#   number.times do
#     lights_array.each do |light|
#       if (light[:index] % ticker).zero?
#         light[:status] = light[:status] == 'off' ? 'on' : 'off'
#       end
#     end
#     ticker += 1
#   end
#   lights_on = []
#   lights_array.each do |light|
#     lights_on << light[:index] if light[:status] == 'on'
#   end
#   p lights_on
# end
# lights(10)

# After Completion I extracted elements into more maintaible blocks

# final displays more complex display method
def lights(number)
  light_arr = create_light_arr(number)
  changed_arr = loop_through_ticker(light_arr, number)
  hash_of_lights = arrange_light_posttions(changed_arr)
  display_status(hash_of_lights, number)
end

def create_light_arr(number)
  lights_array = []
  (1..number).to_a.each do |num|
    current_light = {}
    current_light[:index] = num
    current_light[:status] = 'off'
    lights_array << current_light
  end
  lights_array
end

def loop_through_ticker(arr, number)
  ticker = 1
  number.times do
    detect_light_status(arr, ticker)
    ticker += 1
  end
  arr
end

def detect_light_status(arr, ticker)
  arr.each do |light|
    change_light_status(light) if (light[:index] % ticker).zero?
  end
end

def change_light_status(light)
  light[:status] = light[:status] == 'on' ? 'off' : 'on'
end

def arrange_light_posttions(arr)
  lights_indexs = { on: [], off: [] }
  arr.each do |light|
    if light[:status] == 'on'
      lights_indexs[:on] << light[:index]
    else
      lights_indexs[:off] << light[:index]
    end
  end
  lights_indexs
end

def display_status(hash, number)
  puts "with #{number} lights #{hash[:on].join(', ')} are on, lights #{hash[:off].join(', ')} are off."
end
puts lights(5)
