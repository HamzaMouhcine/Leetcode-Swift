class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var n = nums.count / 2
        
        var shuffled_array: [Int] = []
        for i in 0..<n {
            shuffled_array.append(nums[i])
            shuffled_array.append(nums[i+n])
        }
        
        return shuffled_array
    }
}