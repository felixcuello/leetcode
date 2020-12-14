class Solution {
public:
    bool isPalindrome(int x) {
        if(x<0) return false;

        vector<int> a;
        while(x > 0) {
            cout << x % 10 << endl;
            a.push_back(x % 10);
            x = (x - (x%10)) / 10;
        }

        for(int i=0; i<a.size(); ++i)
            if(a[i] != a[a.size() - 1 - i])
                return false;

        return true;
    }
