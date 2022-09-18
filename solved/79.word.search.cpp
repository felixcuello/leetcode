class Solution {
public:
  bool walk(vector<vector<char>>& board, string word, string current, int row, int col, int pos) {
    if(word.length() == current.length()) // found a word
      return word == current;
    if(col < 0) return false; // off the board
    if(row < 0) return false; // off the board
    if(row >= board.size()) return false; // off the board
    if(col >= board[0].size()) return false; // off the board
    if(word[pos] != current[pos]) return false;
    if(board[row][col] == '.') return false;

    char saved = board[row][col];
    board[row][col] = '.';

    if((row-1 >= 0) && walk(board, word, current + board[row-1][col], row-1, col, pos+1)) return true; // up
    if((row+1 < board.size()) && walk(board, word, current + board[row+1][col], row+1, col, pos+1)) return true; // down
    if((col-1 >= 0) && walk(board, word, current + board[row][col-1], row, col-1, pos+1)) return true; // left
    if((col+1 < board[0].size()) && walk(board, word, current + board[row][col+1], row, col+1, pos+1)) return true; // right

    board[row][col] = saved;

    return false;
  } 
  
  bool exist(vector<vector<char>>& board, string word) {
    int rows = board.size();
    int cols = board[0].size();
    string current = "";
    
    map<char, int> board_letters;
    for(int row = 0; row < rows; ++row)
      for(int col = 0; col < cols; ++col)
        board_letters[board[row][col]] += 1;
    
    map<char, int> word_letters;
    for(int i=0; i < word.length(); i++)
        word_letters[word[i]] += 1;
    
    for(int i=0; i < word.length(); i++)
      if(word_letters[word[i]] > board_letters[word[i]])
        return false;
    
    for(int row = 0; row < rows; ++row)
      for(int col = 0; col < cols; ++col) {
        if(walk(board, word, current + board[row][col], row, col, 0))
          return true;
    }
    
    return false;
  }
};
