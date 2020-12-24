def count_primes(n)
    primes = Array.new(n,0)

    for i in (2...Math.sqrt(n))
        next if i == 1

        for j in (i..n/i)
            primes[i*j] = 1
        end
    end

    tot_primes = 0
    for i in (2...n)
        tot_primes += 1 if primes[i] == 0
    end
    tot_primes
end