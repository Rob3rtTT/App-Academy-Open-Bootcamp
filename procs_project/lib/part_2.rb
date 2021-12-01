def reverser(str, &block)
    block.call(str.reverse!)
end

def word_changer(sent, &block)
    new_sent=sent.split(" ").map {|word| block.call(word)}
    new_sent.join(" ")
end

def greater_proc_value(num, proc_1, proc_2)
    if proc_1.call(num)>proc_2.call(num)
        proc_1.call(num)
    else
        proc_2.call(num)
    end
end

def and_selector(array, proc_1, proc_2)
    new_arr=array.select {|ele| proc_1.call(ele)==true && proc_2.call(ele)==true}
    new_arr
end

def alternating_mapper(array, proc_1, proc_2)
    new_arr=[]
    array.each_with_index do |ele, i|
        if i%2==0
            new_arr<<proc_1.call(ele)
        else
            new_arr<<proc_2.call(ele)
        end
    end
    new_arr
end