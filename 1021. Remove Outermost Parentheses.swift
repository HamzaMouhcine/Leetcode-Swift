class Solution {
    func removeOuterParentheses(_ s: String) -> String {
        var removed = String()
        
        var next = String(),
            cur = 0
        for c in s {
            next.append(c)
            if c == "(" { cur += 1 }
            else { cur -= 1 }
            
            if cur == 0 {
                next.removeFirst()
                next.removeLast()
                removed.append(next)
                next = String()
                cur = 0
            }
        }
        
        return removed
    }
}