# Enter your object-oriented solution here!

require "prime"
class LargestPrimeFactor
  def initialize(input)
    @input = input
  end

  def number
    factor = 2
    while factor < @input
      result = @input / factor
      return result if @input % factor == 0 && Prime.prime?(result)
      factor += 1
    end
  end
end
