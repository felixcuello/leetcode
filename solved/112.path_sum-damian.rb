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
# @param {Integer} sum
# @return {Boolean}
def check_sum(node, sum, current_sum)
    return false if node.nil?

    current_sum += node.val

    if node.left.nil? && node.right.nil?
        return true if current_sum == sum
    end

    check_sum(node.left, sum, current_sum) || check_sum(node.right, sum, current_sum)
end

def has_path_sum(root, sum)
   check_sum(root,sum, 0)
end