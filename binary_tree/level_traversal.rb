# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
  return [] if root.nil?
  vals = []
  traverse(root, vals, 0)
  vals
end

def traverse(root, vals, level)
  return if root.nil?

  vals[level] ||= []
  vals[level] << root.val

  traverse(root.left, vals, level + 1)
  traverse(root.right, vals, level + 1)
end

