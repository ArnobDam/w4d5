require "byebug"

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

# list = [0,3,5,4,-5,10,1,90]
# p my_min(list)

def largest_contiguous_subsum(list)
    # new_arr = []
    # sum = 0
    # (0...list.length).each do |idx1|
    #     new_arr << [list[idx1]]
    #     (idx1+1...list.length).each do |idx2|
    #         new_arr << list[idx1..idx2]
    #     end
    # end
    # new_arr.each do |subarr|
    #     sum = subarr.sum if subarr.sum > sum
    # end

    # sum

# O(2^n)

    current = 0
    max = 0
    (0...list.length).each do |idx|
        if (current + list[idx]) > list[idx]
            current = current + list[idx]
        else
            current = list[idx]
        end
        if current > max
            max = current
        end
    end
    max

    # O(n)
end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)
