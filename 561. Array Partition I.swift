class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var nums = nums.sorted(by: <),
            sum = 0
        
        for i in 0..<nums.count/2 {
            sum += nums[i*2]
        }
        
        return sum
    }
}