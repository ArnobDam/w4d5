def my_min(arr)
    #Phase 1
    smallest_num = 0

    (0...arr.length-1).each do |idx1|
        (idx1+1...arr.length).each do |idx2|
            if arr[idx1] < arr[idx2] 
                if arr[idx1] < smallest_num
                    smallest_num = arr[idx1]
                end
            end
        end
    end
    #O(n^2)

    smallest_num

    #Phase 2
    smallest_num = 0
    arr.each do |num|
        if num < smallest_num
            smallest_num = num
        end
    end
    smallest_num
    #O(n)

    
    smallest_num
end

list = [0,3,5,4,-5,10,1,90]
p my_min(list)

