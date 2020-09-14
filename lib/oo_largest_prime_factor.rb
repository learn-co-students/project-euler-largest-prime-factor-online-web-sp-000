# Enter your object-oriented solution here!
class LargestPrimeFactor 
  attr_accessor :number 
  
  def initialize(n)
   # @n = n
    @number = self.largest_prime(n)
  end
  
  def is_prime?(digit)
    array = []
    (2..digit-1).each do |d|
      if digit% d == 0 
        array << d 
      end
    end
    return true if array.empty? 
    false
  end
  
  def largest_prime(n) 
    i = 3 
    result = 0
    ni = n
    while i <= ni 
      if ni % i == 0 && is_prime?(i) 
        result = i 
        ni = ni/i 
        
      end
     i +=1
    end
    result
  end
end