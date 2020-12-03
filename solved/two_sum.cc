class Solution {
public:
  vector<int> twoSum(vector<int>& nums, int target) {
    map<int,int> mem;

    for(int i=0; i<nums.size(); ++i)
      if(mem.find(nums[i]) != mem.end())
        return {mem[nums[i]], i};
      else
        mem[target-nums[i]] = i;

    return {};
  }
};