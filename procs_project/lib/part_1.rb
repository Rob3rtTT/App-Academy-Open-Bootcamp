def my_map(arr, &block)
    new_arr=[]
    arr.each {|ele| new_arr<<block.call(ele)}
    new_arr
end

def my_select(arr, &block)
    new_arr=[]
    arr.each do |ele|
        if block.call(ele)==true
            new_arr<<ele
        end
    end
    new_arr
end

def my_count(arr, &prc)
    count=0
    arr.each do |ele|
        if prc.call(ele)==true
            count+=1
        end
    end
    count
end

def my_any?(array, &block)
    array.each do |ele|
        if block.call(ele) == true
            return true
        end
    end
    false
end

def my_all?(arr, &block)
    arr.each do |ele|
        if block.call(ele)==false
            return false
        end
    end
    true
end

def my_none?(arr, &block)
    arr.each do |ele|
        if block.call(ele)==true
            return false
        end
    end
    true
end