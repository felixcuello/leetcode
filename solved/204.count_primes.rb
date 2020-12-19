# @param {Integer} n
# @return {Integer}

def count_primes(n)
    matrix = Array.new(n, true)
    matrix[0] = false
    matrix[1] = false

    primes = []
    for i in (2..n)
        next if matrix[i] == false
        primes << i if matrix[i] == true

        j = i+i
        while(j<=n)
            matrix[j] = false
            j += i
        end
    end

    ans = 0
    while(ans < primes.count() && primes[ans]<n)
        ans += 1
    end
    ans
end
