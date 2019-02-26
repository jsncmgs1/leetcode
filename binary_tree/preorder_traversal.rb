# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
    answers = []
    traverse(root, answers)
    answers
end

def traverse(root, answers)
    return if root.nil?
    answers << root.val
    traverse(root.left, answers)
    traverse(root.right, answers)
end

