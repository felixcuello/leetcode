# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  head = nil
  last = nil

  while(l1 and l2)
    a,b = l1.val < l2.val ? [l1.val, l2.val] : [l2.val, l1.val]

    if last
      last.next = ListNode.new
      last.next.val = a
      last = last.next
    else
      last = ListNode.new
      head = last unless head
      last.val = a
    end

    if(l1.val < l2.val)
      l1 = l1.next
    else
      l2 = l2.next
    end
  end

  if last
    last.next = l1 if l1
    last.next = l2 if l2
  else
    head = l1 if l1
    head = l2 if l2
  end

  head
end