def first_anagram?(str_1, str_2)

    str_1_arr = str_1.split("")

    permutations = str_1_arr.permutation

    return true if permutations.include?(str_2.split(""))

    false
end
#O(n!)

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")

def second_anagram?(str_1, str_2)
    str_2_arr = str_2.split("")
    str_1.each_char do |char|
        str_2_arr.delete(char)
    end
    return str_2_arr == []

end
# O(n)
# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")

def third_anagram?(str_1, str_2)
    str_1_arr = str_1.split("")
    str_2_arr = str_2.split("")

    str_1_arr.sort == str_2_arr.sort
end
# O(nlogn)
# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")

def fourth_anagram?(str_1, str_2) #bonus version
    hash_1 = Hash.new(0)
    # hash_2 = Hash.new(0)

    str_1.each_char do |char|
        hash_1[char] += 1
    end

    str_2.each_char do |char|
        hash_1[char] -= 1
    end

    return true if hash_1.values.all? {|value| value == 0}

    false

end
#O(n)

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")