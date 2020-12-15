class Solution {
public:
    int numJewelsInStones(string J, string S) {
        map<char, int> joyas;

        for(int i=0; i<J.size(); ++i)
            ++joyas[J[i]];

        int ans = 0;
        for(int i=0; i<S.size(); ++i)
            if(joyas[S[i]] > 0)
                ++ans;

        return ans;
    }
};