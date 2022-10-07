require "byebug"
def sluggish_octopus(arr_fish)
    longest = arr_fish.first
    arr_fish.each do |fish1|
        arr_fish.each do |fish2|
            if fish1 > fish2
                longest = fish1
            end
        end
    end
    longest
end
arr_fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
 p sluggish_octopus(arr_fish)

def dominant_octopus(arr_fish)
    return arr_fish if arr_fish.length < 2
    pivot = arr_fish.first
    left = arr_fish[1..-1].select { |fish| fish.length < pivot.length }
    right = arr_fish[1..-1].select { |fish| fish.length > pivot.length}
    sorted = (dominant_octopus(left) + [pivot] + dominant_octopus(right))
    sorted.last
    # debugger
end
#  p dominant_octopus(arr_fish)

 def clever_octopus(arr_fish)
    longest = arr_fish.first
    arr_fish.each do |fish| 
        if fish.length > longest.length
            longest = fish
        end
    end
    longest
 end
 p clever_octopus(arr_fish)

 tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up" ]
 def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |tile, i|
        return i if direction == tile
    end
end
p slow_dance("up", tiles_array)

p slow_dance("right-down", tiles_array)

new_tiles_data_structure = { "up"=>0, "right-up"=>1, "right"=>2, "right-down"=>3, "down"=>4, "left-down"=>5, "left"=>6,  "left-up"=>7 }

def fast_dance (direction, new_tiles_data_structure)
    new_tiles_data_structure[direction]
end
p fast_dance("up", new_tiles_data_structure)


p fast_dance("right-down", new_tiles_data_structure)
    
    

