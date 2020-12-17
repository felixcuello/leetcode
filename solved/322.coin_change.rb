# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}

def dp(coins, amount)
    return -1 if amount < 0
    return @mem[amount] if @mem.has_key?(amount)

    min = 50000
    coins.each do |coin|
        current = 1 + dp(coins, amount-coin)
        min = current if current > 0 && current < min
    end

    @mem[amount] = min
end

def coin_change(coins, amount)
    @mem = {0 => 0}
    ans = dp(coins, amount)
    ans == 50000 ? -1 : ans
end
