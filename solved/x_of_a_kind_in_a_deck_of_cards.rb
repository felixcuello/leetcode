# @param {Integer[]} deck
# @return {Boolean}
def has_groups_size_x(deck)
  sieve = Array.new(200, true)
  primes = []
  for p in (2..100)
    next unless sieve[p]
    primes.push(p)

    i = p*p
    while i <= 10000
      sieve[i] = false
      i += p
    end
  end

  freq = {}
  deck.each do |c|
    freq[c] ||= 0
    freq[c] += 1
  end

  primes.each do |p|
    ans = true
  	freq.each do |k,v|
      ans &= (v % p == 0)
    end

    return true if ans
  end

  return false
end

puts has_groups_size_x([1,1,1,2,2,2,2,2,2])
