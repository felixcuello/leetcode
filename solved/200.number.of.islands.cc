class Solution {
public:
  int numIslands(vector<vector<char>>& grid) {
    int rows = grid.size();
    int cols = grid[0].size();
    int ans = 0;
    for(int i=0; i<rows; ++i) {
      for(int j=0; j<cols; ++j) {
        if(grid[i][j] == '1') {
          ++ans; // found an island

          // sink the island
          vector<int> coor;
          coor.push_back(i);
          coor.push_back(j);
                    
          while(coor.size() > 0) {
            int col = coor.back(); coor.pop_back();
            int row = coor.back(); coor.pop_back();
                        
            grid[row][col] = '0';

            if(col-1 >= 0 && grid[row][col-1] == '1')
              { coor.push_back(row); coor.push_back(col-1); }
            if(col+1 < cols && grid[row][col+1] == '1')
              { coor.push_back(row); coor.push_back(col+1); }
            if(row-1 >= 0 && grid[row-1][col] == '1')
              { coor.push_back(row-1); coor.push_back(col); }
            if(row+1 < rows && grid[row+1][col] == '1')
              { coor.push_back(row+1); coor.push_back(col); }
          }
        }
      }
    }
        
    return ans;
  }
};
