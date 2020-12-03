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
  bool isSymmetric(TreeNode* root) {
    if(root == NULL)
      return true;

    list<TreeNode*> q;
    q.push_back(root->left);
    q.push_back(root->right);
    while(q.size() > 0) {
      TreeNode* l = q.front(); q.pop_front();
      TreeNode* r = q.front(); q.pop_front();

      if(l == NULL && r != NULL) return false;
      if(l != NULL && r == NULL) return false;
      if(l == NULL && r == NULL) continue;

      if(l->val != r->val) return false;

      q.push_back(l->left);
      q.push_back(r->right);
      q.push_back(l->right);
      q.push_back(r->left);
    }

    return true;
  }
};