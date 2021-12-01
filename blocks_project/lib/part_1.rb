def select_even_nums(arr)
    arr.select(&:even?)
end

def reject_puppies(dogs)
    dogs.reject {|k,v| k["age"]<=2}
end

def count_positive_subarrays(array)
    array.count {|subarr| subarr.sum > 0}
end

def aba_translate(str)
    vowels="aeiou"
    new_word=str.split("").map do |chars| 
        if vowels.include?(chars)
            chars+"b"+chars
        else
            chars
        end
    end
    new_word.join("")
end

def aba_array(array)
    array.map {|ele| aba_translate(ele)}
end