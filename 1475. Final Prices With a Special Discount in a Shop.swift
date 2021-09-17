class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var afterDiscount = [Int](repeating: 0, count: prices.count),
            stack = [Int]()
        
        for i in (0..<prices.count).reversed() {
            while !stack.isEmpty && stack.last! > prices[i] {
                stack.removeLast()
            }
            if stack.isEmpty { afterDiscount[i] = prices[i] }
            else { afterDiscount[i] = prices[i] - stack.last! }
            
            stack.append(prices[i])
        }
        
        return afterDiscount
    }
}