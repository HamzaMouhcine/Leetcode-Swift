class Solution {
    func diStringMatch(_ s: String) -> [Int] {
        var ans = [Int](),
            cntDown = 0
        
        for c in s {
            if c == "D"  { cntDown += 1 }
        }
        
        var l = cntDown, 
            r = cntDown
        ans.append(cntDown)
        
        for c in s {
            if c == "D" {
                l -= 1
                ans.append(l)
            } else {
                r += 1
                ans.append(r)
            }
        }
        
        return ans
    }
}