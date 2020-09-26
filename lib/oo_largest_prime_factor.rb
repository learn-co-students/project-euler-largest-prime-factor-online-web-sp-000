# Enter your object-oriented solution here!
class LargestPrimeFactor

  def initialize(n)
    @n = n
  end

  def number
    while @n.even?
      # divide by 2 until you can't anymore
      @n = @n/2
    end

    if @n <= 3
      return @n
    end

    i = 3
    highest_prime = @n
    sqrt_n  = Math.sqrt(@n)

    while i <= sqrt_n
      # number cannot be divisble by a number bigger than it's square root
      if @n % i == 0
        @n = @n/i
        highest_prime = i
      end

      # can skip even numbers at this point since we already divided out all the 2s
      i = i + 2
    end

    return highest_prime
  end
end
