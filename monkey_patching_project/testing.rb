
def my_uniq(arr)
    count = Hash.new(0)
    arr.each { |ele| count[ele]+=1}
    p count.keys
end
arr = [4,1,1,3]
p my_uniq(arr)