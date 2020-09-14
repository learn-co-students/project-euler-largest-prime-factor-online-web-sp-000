
# Enter your procedural solution here!

def is_prime?(n)
  tests = (2.. Math.sqrt(n).floor)
  tests = tests.select { |x| n % x == 0 }
  if tests.empty? 
    return true 
  end
  false
end

def largest_prime_factor(number)
  n = 3
  o =  0 
  while n <= number 
      if (number % n == 0 && is_prime?(n))
        o = n 
        number = number/n
      end
      n += 1
  end
  o
end
# def largest_prime_factor(number)
#   array = []
#   p = 2 
#   while p < number-1
#     if number%p == 0 
#       i = 2 
#       while i < p-1 
#         if p % i == 0 
#           break
#         else 
#           array << p 
#         end
#       end
#       #array << p
#     end
#     p +=1
#   end
#   puts array
# end