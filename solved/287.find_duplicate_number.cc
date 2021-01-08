class Solution {
public:
    int findDuplicate(vector<int>& nums) {
      int ns = nums.size();
      for(int i=0; i<ns; ++i) {
        int pos = abs(nums[i]) - 1;
        if(nums[pos] < 0)
          return abs(nums[i]);
        nums[pos] *= -1;
      }

      return -1;
    }
};