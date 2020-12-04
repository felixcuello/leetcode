class Solution {
public:
    int reverse(int x) {
      bool negative = x<0;
      x = abs(x);

      string s;
      while(x>0) {
        s.push_back((x%10) + '0');
        x -= x%10;
        x /= 10;
      }

      stringstream xxx(s);
      long long ans = 0;
      xxx >> ans;

      if((ans > 2147483647) || (negative && ans > 2147483648))
        return 0;

      return negative ? -ans : ans;
    }
};