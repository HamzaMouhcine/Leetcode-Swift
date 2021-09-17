class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var cnt = [Int](repeating: 0, count: 101)
        
        for num in nums {
            cnt[num] += 1
        }
        
        for i in 1...100 {
            cnt[i] += cnt[i-1]
        }
        
        var ans = [Int](repeating: 0, count: nums.count)
        for (idx, num) in nums.enumerated() {
            if num != 0 {
                ans[idx] = cnt[num-1]
            }
        }
        
        return ans
    }
}