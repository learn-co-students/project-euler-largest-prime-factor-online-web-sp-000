# Enter your procedural solution here!
require "prime"
def largest_prime_factor(input)
  factor = 2
  while factor < input
    result = input / factor
    return result if input % factor == 0 && Prime.prime?(result)
    factor += 1
    # return result if
  end
end
