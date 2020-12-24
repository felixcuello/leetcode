def dp(coins, amount)
    return -1 if amount < 0
    return @mem[amount] if @mem.has_key?(amount)

    # Superior limit of amount
    min = 10**4 + 1
    coins.each do |c|
        tmp = dp(coins, amount - c) + 1
        min = tmp if tmp < min && tmp != 0
    end

    @mem[amount] = min
end

def coin_change(coins, amount)
    @mem = {0 => 0}
    dp(coins, amount)
    # This means that there is not a minimum of coins's combination to reach the desire amount
    @mem[amount] == 10001 ? -1 : @mem[amount]
end