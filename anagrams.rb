def first_anagram?(str_1, str_2)


end

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
