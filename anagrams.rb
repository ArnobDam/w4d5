def first_anagram?(str_1, str_2)


end

def second_anagram?(str_1, str_2)
    str_2_arr = str_2.split("")
    str_1.each_char.with_index do |char,idx|
        str_2_arr.delete(char)
    end

    
end