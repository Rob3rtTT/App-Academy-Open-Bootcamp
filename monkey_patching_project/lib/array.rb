# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self.none?
            return nil
        else
            return self.max - self.min
        end
    end

    def average
        return nil if self.none?
        self.sum.to_f / self.length.to_f
    end
    
    def median
        return nil if self.none?
        if self.length % 2 != 0
            mid=(self.sort.length / 2.0)
            return self.sort[mid]
        else
            half=self.length / 2
            return (self.sort[half]+self.sort[half-1])/2.0
        end
    end

    def counts
        count=Hash.new(0)
        self.each {|ele| count[ele]+=1}
        count
    end

    def my_count(str)
        count=Hash.new(0)
        self.each {|ele| count[ele]+=1}
        count[str]
    end

    def my_index(val)
        i=0
        while i < self.length
            if self[i] == val
                return i
            end
        i+=1
        end
        nil
    end 
    
    def my_uniq
        count = Hash.new(0)
        self.each { |ele| count[ele]+=1}
        p count.keys
    end

    def my_transpose
        new_arr=[]
        (0...self.length).each do |row|
            new_row = []

            (0...self.length).each do |col|
                new_row<< self[col][row]
            end

            new_arr << new_row
        end
        new_arr
    end
end
