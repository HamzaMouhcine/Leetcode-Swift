class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var ans = 0
        
        var jewel = [Character: Bool]()
        for c in jewels {
            jewel[c] = true
        }
        
        for c in stones {
            if jewel[c] != nil {
                ans += 1
            }
        }
        
        return ans
    }
}