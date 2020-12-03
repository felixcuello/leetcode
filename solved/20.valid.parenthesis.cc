class Solution {
public:
  bool isValid(string s) {
    map<char,char> opening;
    vector<char> stack;

    opening[')'] = '(';
    opening[']'] = '[';
    opening['}'] = '{';

    for(int i=0; i<s.length(); ++i)
      if(s[i] == '(' || s[i] == '[' || s[i] == '{')
        stack.push_back(s[i]);
      else {
        if(stack.size() == 0)
          return false;

        char p = stack.back();
        stack.pop_back();

        if(opening[s[i]] != p)
          return false;
      }

    return stack.size() == 0;
  }
};
