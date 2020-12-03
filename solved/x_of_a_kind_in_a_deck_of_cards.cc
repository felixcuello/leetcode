class Solution {
public:
    bool hasGroupsSizeX(vector<int>& deck) {
      if(deck.size() < 2)
        return false;

      vector<bool> sieve(100, true);
      vector<int> primes;
      for(int p=2; p<=100; ++p) {
        if(sieve[p] == false) continue;
        primes.push_back(p);

        for(int i=p*p; i<=100; i+=p)
          sieve[i] = false;
      }

      map<int,int> freq;
      for(vector<int>::iterator i=deck.begin(); i!=deck.end(); ++i)
        ++freq[*i];

      for(vector<int>::iterator p=primes.begin(); p!=primes.end(); ++p) {
        bool ans = true;
        for(map<int,int>::iterator i=freq.begin(); i!=freq.end(); ++i)
          ans &= (i->second % *p == 0);

        if(ans == true)
          return true;
      }

      return false;
    }
};