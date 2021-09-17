class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var presum: [Int] = []
        var cursum = 0
        for num in nums {
            cursum += num
            presum.append(cursum)
        }
        
        return presum
    }
}