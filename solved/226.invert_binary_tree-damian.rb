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
def invert(node)
    # return if no childs are available
    return if node.right.nil? && node.left.nil?

    temp = node.right
    node.right = node.left
    node.left = temp

    # only instanced childs should be inverted
    invert(node.right) unless node.right.nil?
    invert(node.left) unless node.left.nil?
end
def invert_tree(root)
    invert(root) unless root.nil?
    root
end