def largest_prime_factor(input)

    # find all factors
    a = 1
    factors = []
    
    while a <= input
        if (input % a) == 0 
            factors.push(a)
        end
        a += 1
    end
    
    # find factors that are prime numbers
    prime_factors = factors.select do |factor|
        if (factor == 1 || factor == input)
            false
        else
            (2..factor - 1).none? do |f|
                factor % f == 0
            end
        end
    end

    # select largest prime factor
    prime_factors.max
end

puts largest_prime_factor(600851475143)