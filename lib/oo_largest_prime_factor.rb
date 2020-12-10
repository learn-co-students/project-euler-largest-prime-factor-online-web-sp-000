# Enter your object-oriented solution here!
class LargestPrimeFactor
    attr_reader :num

    def initialize(num)
        @num = num
    end

    def prime?(n)
        if n <= 1
          return false
        else 
            if (2..Math.sqrt(n).floor).any? { |i| n % i === 0}
                return false
            else
                return true
            end 
        end
    end
    
    def number
        largest = 1
        counter = 1
    
        until counter === Math.sqrt(@num).floor
            if prime?(counter) && @num % counter === 0
                largest = counter
            end
            counter += 1
        end
    
        largest
    end
end