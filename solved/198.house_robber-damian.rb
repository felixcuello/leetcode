def rob(nums)
    return 0 if nums.count == 0
    dp = Array.new(100,0)

    return nums.max if nums.count < 3

    dp[0] = nums[0]
    dp[1] = [dp[0], nums[1]].max

    max = [dp[0], dp[1]].max

    for i in (2..nums.count-1)
        dp[i] = [dp[i-1], dp[i-2] + nums[i]].max

        max = dp[i] if dp[i] > max
    end
    max
end