# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(n)
    factors = []
    (1..n).each do |facts|
        factors << facts if n % facts == 0
    end
    prime_factors = factors.select {|ele| prime?(ele)}
    prime_factors[-1]
end



def prime?(x)
    return false if x < 2

    (2...x).each do |factors|
        if x%factors==0
            return false
        end
    end
    true
end

def unique_chars?(str)
    already_seen=[]
    str.each_char do |char|
        if already_seen.include?(char)
            return false
        end
        already_seen << char
    end
    true
end

def dupe_indices(arr)
    hash=Hash.new{|h,k| h[k] = []}
    arr.each.with_index do |ele, i|
        hash[ele]<<i
    end
 hash.select {|ele,arr| arr.length>1}
end

def ana_array(arr1,arr2)
    if arr1.length != arr2.length
        return false
    end
    arr2.all? {|ele| arr1.include?(ele)} 
end