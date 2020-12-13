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
    void dfs(TreeNode* current, int sum, vector<vector<int>>& ans, vector<int> path) {
        if(current == NULL) return;

        sum -= current->val;
        path.push_back(current->val);

        if(current->left == NULL && current->right == NULL) {
            if(sum == 0)
                ans.push_back(path);
        } else {
            if(current->left)
                dfs(current->left, sum, ans, path);
            if(current->right)
                dfs(current->right, sum, ans, path);
        }
    }
    vector<vector<int>> pathSum(TreeNode* root, int sum) {
        vector<vector<int>> ans;
        vector<int> path;
        dfs(root, sum, ans, path);

        return ans;
    }
};