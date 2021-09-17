class Solution {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        if nums[0] == nums[nums.count-1] { return nums[0] }
        
        for i in 0..<nums.count {
            if nums[i] == nums[i+1] 
               || nums[i] == nums[i+2] 
            { 
                   return nums[i]
            }
        }
        
        return 69
    }
}