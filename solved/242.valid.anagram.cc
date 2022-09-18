class Solution {
public:
  bool isAnagram(string s, string t) {
    map<char, int> freq;
    for(int i=0; i<s.length(); i++)
      freq[s[i]] += 1;
    
    for(int i=0; i<t.length(); i++) {
      freq[t[i]] -= 1;
      if(freq[t[i]] < 0)
        return false;
    }
    
    for(int i=0; i<s.length(); i++)
      if(freq[s[i]] != 0)
        return false;
    
    return true;
  }
};

/*
This works, but the fastest way, apparently is to make an array of size 26 (all letters)
and count the frequency using    array1[s[i] - 'a'] += 1

The same for array2[t[i] - 'a'] += 1

And then compare if array1 and array2 are the same.
*/
