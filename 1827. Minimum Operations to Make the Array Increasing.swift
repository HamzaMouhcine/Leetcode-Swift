class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var minO = 0,
            last = nums[0]-1
        
        for num in nums {
            if last < num {
                last = num
            } else {
                minO += last+1 - num
                last += 1
            }
        }
        
        return minO
    }
}