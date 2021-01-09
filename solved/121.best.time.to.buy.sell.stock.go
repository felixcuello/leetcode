func maxProfit(prices []int) int {
  if len(prices) == 0 {
    return 0
  }

  ans := 0
  min := prices[0]
  max := prices[0]

  for i:=1; i<len(prices); i++ {
    if prices[i] > max {
      max = prices[i]

      if (max-min) > ans {
        ans = max - min
      }
    }

    if prices[i] < min {
      min = prices[i]
      max = prices[i]
    }
  }

  return ans
}