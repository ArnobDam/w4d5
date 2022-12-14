def bad_two_sum?(arr, target_sum)

    (0...arr.length-1).each do |idx1|
        (idx1+1...arr.length).each do |idx2|
            sum = arr[idx1] + arr[idx2]
            return true if sum == target_sum
        end
    end

    false
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false