#Monkey Patching - Adding additional methods to an existing class
#Ruby Types are really classes: Integer, String, Array, Hash. etc...

#class String
#    def upcase?
#        self.upcase == self
#    end
#end
#p "hello".upcase? # false
#p "HELLO".upcase? #true


#class Integer
#    def prime?
#        return false if self < 2
#        (2...self).each do |factor|
#            if self % factor == 0
#                return false
#            end
#        end
#        true
#    end
#end
#
#p 7.prime?
#p 11.prime?
#p 12.prime?


class Array
    def has_zero?
        self.include?(0)
    end
end



p [4,2,3, "hello", 0].has_zero? # true