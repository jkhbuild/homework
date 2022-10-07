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
# def dominant octopus