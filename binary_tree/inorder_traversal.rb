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

def inorder_traversal(root)
  answers = []
  traverse(answers, root)
  answers
end

def traverse(answers, root)
  return if root.nil?
  traverse(answers, root.left) if root.left
  answers << root.val
  traverse(answers, root.right)
end

