class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var decompressed_list = [Int](),
            n = nums.count / 2
        
        for idx in 0..<n  {
            for i in 1...nums[idx*2] {
                decompressed_list.append(nums[idx*2 + 1])
            }
        }
        
        return decompressed_list
    }
}