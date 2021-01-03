class Solution {
public:
  void perimeter(
	vector<int>& ans,
	vector<vector<int>>& array,
	int minrow, int maxrow, int mincol, int maxcol
) {
    // top
    for(int col=mincol; col<maxcol; ++col)
      ans.push_back(array[minrow][col]);
    // right
    for(int row=minrow+1; row<maxrow; ++row)
      ans.push_back(array[row][maxcol-1]);
    // bottom
    for(int col=maxcol-2; col>=mincol; --col)
      if(maxrow - minrow > 1)
        ans.push_back(array[maxrow-1][col]);
    // left
    for(int row=maxrow-2; row>=minrow+1; --row)
      if(maxcol - mincol > 1)
        ans.push_back(array[row][mincol]);
  }

  vector<int> spiralOrder(vector<vector<int>>& array) {
    	vector<int> ans;

      int minrow = 0;
      int maxrow = array.size();
      int mincol = 0;
      int maxcol = array[0].size();

      while(mincol < maxcol && minrow < maxrow) {
        perimeter(ans, array, minrow, maxrow, mincol, maxcol);
        minrow++;
        maxrow--;
        mincol++;
        maxcol--;
      }

      return ans;
  }
};