class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var cnt = [Int: Int]()
        
        var ans = 0
        for num in nums {
            ans += cnt[num] ?? 0
            cnt[num, default:0] += 1;
        }
        
        return ans
    }
}