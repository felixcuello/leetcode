func maxProfit(prices []int) int {
  if len(prices) == 0 {
    return 0
  }

  ans := 0
  mi := prices[0]
  mx := prices[0]
  flush := true

  for i:=1; i<len(prices); i++ {
    if prices[i] < mx {
      flush = false
      ans += mx - mi
      mi = prices[i]
      mx = prices[i]
    }

    if prices[i] > mx {
      flush = true
      mx = prices[i]
    }
  }

  if flush {
    ans += mx - mi
  }

  return ans
}