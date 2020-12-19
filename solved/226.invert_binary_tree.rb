# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {TreeNode}

def invert(root, ans)
    return nil if root.nil?

    ans.val = root.val

    ans.right = invert(root.left, TreeNode.new) unless root.left.nil?
    ans.left  = invert(root.right, TreeNode.new) unless root.right.nil?

    ans
end

def invert_tree(root)
    return nil if root.nil?

    ans = TreeNode.new
    invert(root, ans)
    ans
end