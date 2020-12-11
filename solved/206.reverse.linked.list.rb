# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  ans = nil
  last = nil
  current = head
  while(current != nil)
    ans = ListNode.new
    ans.val = current.val
    ans.next = last
    last = ans
    current = current.next
  end

  ans
end
