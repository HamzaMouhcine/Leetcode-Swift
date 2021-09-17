class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var cnt = [Int](repeating: 0, count: 101),
            sum = 0
        
        for num in nums {
            cnt[num] += 1
            if cnt[num] == 1 { sum += num }
            else if cnt[num] == 2 { sum -= num }
        }
        
        return sum
    }
}