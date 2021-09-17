class Solution {
    func maxDepth(_ s: String) -> Int {
        var nesting_depth = 0,
            cur_depth = 0
        
        for c in s {
            if c == "(" { cur_depth += 1 }
            else if c == ")" { cur_depth -= 1}
            nesting_depth = max(nesting_depth, cur_depth)
        }
        
        return nesting_depth
    }
}