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
    return arr_fish.first if arr_fish.length < 2
    pivot = arr_fish.first
    left = arr_fish[1..-1].select { |fish| fish.length < pivot.length }
    right = arr_fish[1..-1].select { |fish| fish.length > pivot.length}
    debugger
    (dominant_octopus(left) + [pivot] + dominant_octopus(right)).last
end
 p dominant_octopus(arr_fish)

