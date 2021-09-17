class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var max_balanced = 0,
            balance = 0
        
        for c in s {
            if c == "L" { balance += 1 }
            else { balance -= 1}
            if balance == 0 { max_balanced += 1 }
        }
        
        return max_balanced
    }
}