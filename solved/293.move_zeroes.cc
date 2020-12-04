class Solution {
public:
    void moveZeroes(vector<int>& nums) {
      int ns = nums.size();
      int z = 0;
      for(int i=ns-1; i>=0; --i)
        if(nums[i] != 0)
          nums.push_back(nums[i]);
        else
          ++z;

      for(int i=0; i<ns-z; ++i) {
        nums[i] = nums.back(); nums.pop_back();
      }

      for(int i=ns-z; i<ns; ++i)
        nums[i] = 0;
    }
};