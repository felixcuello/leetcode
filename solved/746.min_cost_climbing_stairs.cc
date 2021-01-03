class Solution {
public:
  int minCostClimbingStairs(vector<int>& cost) {
    if(cost.size() == 1) return cost[0];

    int cs = cost.size();

    vector<int> dp(cs + 1, 0);

    dp[0] = cost[0];
    dp[1] = cost[1];
    for(int i=2; i<cs; ++i)
      dp[i] = min(dp[i-1] + cost[i], dp[i-2] + cost[i]);

//    for(int i=0; i<cs; ++i)
//      cout << "dp[" << i << "] = " << dp[i] << endl;

    return min(dp[cs-1], dp[cs-2]);
  }
};