class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var max_wealth = 0
        
        for i in 0..<accounts.count {
            var tmp = 0
            for j in 0..<accounts[i].count {
                tmp += accounts[i][j]
            }
            max_wealth = max(max_wealth, tmp)
        }
        
        return max_wealth
    }
}