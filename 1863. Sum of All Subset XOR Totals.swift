class Solution {
    func subsetXORSum(_ nums: [Int]) -> Int {
        var sum = 0,
            n = nums.count
        
        for i in 0..<1<<n {
            var tmp = 0
            for j in 0..<n {
                if ((1<<j) & i) != 0 { tmp ^= nums[j] }
            }
            sum += tmp
        }
        
        return sum
    }
}