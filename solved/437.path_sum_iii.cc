/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
  int dfs(TreeNode* current, int sum, long long cs, bool is_root, map<TreeNode*, bool>& seen) {
    if(current == NULL) return 0;
    if(is_root) {
      if(seen[current])
        return 0;
      else
        seen[current] = true;
    }

    cs += current->val;

    //cout << "val=" << current->val << "   cs=" << cs << endl;

    return (cs == sum) +
            dfs(current->left, sum, 0, true, seen) +
            dfs(current->right, sum, 0, true, seen) +
            dfs(current->left, sum, cs, false, seen) +
            dfs(current->right, sum, cs, false, seen);
  }

  int pathSum(TreeNode* root, int sum) {
    long long cs = 0;
    map<TreeNode*, bool> seen;
    return dfs(root, sum, cs, true, seen);
  }
};
